*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${username}         tomsmith
${password}         SuperSecretPassword!
${input_username}   id:username
${input_password}   id:password
${btn_login}        css:button[type='submit']
${div_alert}        id:flash

*** Test Cases ***
Login sucessfully
    Go To                   ${base_url}/login
    Login With              ${username}                         ${password}
    Page Should Contain     You logged into a secure area!  

Invalid username
    Go To                           ${base_url}/login
    Login With                      test                ${password}
    ${alert}=                       Get WebElement      ${div_alert}
    Should Contain Login Alert      Your username is invalid!

Invalid password
    Go To                           ${base_url}/login
    Login With                      ${username}         test
    ${alert}=                       Get WebElement      ${div_alert}
    Should Contain Login Alert      Your password is invalid!

*** Keywords ***
Login With
    [Arguments]     ${user}     ${pass}

    Input Text      ${input_username}     ${user}
    Input Text      ${input_password}     ${pass}
    Click Element   ${btn_login}

Should Contain Login Alert
    [Arguments]     ${expected_message}
    
    ${alert}=           Get WebElement      ${div_alert}
    Should Contain      ${alert.text}       ${expected_message}