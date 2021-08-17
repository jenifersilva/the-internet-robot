*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${radio_group}          radio_group
${id_radio_one}         id
${value_radio_one}      value

*** Test Cases ***
Should set an option by ID
    Go To                               ${base_url}/radiobutton
    Select Radio Button                 ${radio_group}              ${id_radio_one}
    Radio Button Should Be Set To       ${radio_group}              ${id_radio_one}

Should set an option by value
    Go To                               ${base_url}/radiobutton
    Select Radio Button                 ${radio_group}              ${value_radio_one}
    Radio Button Should Be Set To       ${radio_group}              ${value_radio_one}

Should not have an option set
    Go To                                   ${base_url}/radiobutton
    Radio Button Should Not Be Selected     ${radio_group}