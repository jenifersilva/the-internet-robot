*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${dropdown}             dropdown
${index_option_two}     2
${value_option_two}     2
${label_option_two}     Option 2

*** Test Cases ***
Should select an option by index
    [tags]  dropdown
    Go To                               ${base_url}/dropdown
    Select From List By Index           ${dropdown}                 ${index_option_two}
    ${selected}=                        Get Selected List Value     ${dropdown}
    Should Be Equal                     ${selected}                 ${value_option_two}

Should select an option by value
    [tags]  dropdown
    Go To                               ${base_url}/dropdown
    Select From List By Value           ${dropdown}                 ${value_option_two}
    ${selected}=                        Get Selected List Value     ${dropdown}
    Should Be Equal                     ${selected}                 ${value_option_two}

Should select an option by label
    [tags]  dropdown
    Go To                               ${base_url}/dropdown
    Select From List By Label           ${dropdown}                 ${label_option_two}
    ${selected}=                        Get Selected List Label     ${dropdown}
    Should Be Equal                     ${selected}                 ${label_option_two}