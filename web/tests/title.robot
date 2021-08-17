*** Settings ***
Resource        base.robot
Test Setup      Start Session
Test Teardown   End Session

*** Variables ***
${title}        The Internet

*** Test Cases ***
Should show page title
    Title Should Be     ${title}