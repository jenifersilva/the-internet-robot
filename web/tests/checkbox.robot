*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${css_check_one}        css:input[type='checkbox']:nth-child(1)
${css_check_two}        css:input[type='checkbox']:nth-child(3)
${xpath_check_one}      xpath://*[@id='checkboxes']/input[1]
${xpath_check_two}      xpath://*[@id='checkboxes']/input[2]

*** Test Cases ***
Should select an option by CSS selector
    [tags]  css
    Go To                           ${base_url}/checkboxes
    Select Checkbox                 ${css_check_one}
    Checkbox Should Be Selected     ${css_check_one}

Should unselect an option by CSS selector
    [tags]  css
    Go To                               ${base_url}/checkboxes
    Unselect Checkbox                   ${css_check_two}
    Checkbox Should Not Be Selected     ${css_check_two}

Should select an option by Xpath
    [tags]  xpath
    Go To                           ${base_url}/checkboxes
    Select Checkbox                 ${xpath_check_one}
    Checkbox Should Be Selected     ${xpath_check_one}

Should unselect an option by Xpath
    [tags]  xpath
    Go To                               ${base_url}/checkboxes
    Unselect Checkbox                   ${xpath_check_two}
    Checkbox Should Not Be Selected     ${xpath_check_two}