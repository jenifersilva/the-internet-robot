*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${base_url}             https://the-internet.herokuapp.com

*** Keywords ***
Start Session
    Open Browser        ${base_url}     chrome

End Session
    Capture Page Screenshot
    Close Browser