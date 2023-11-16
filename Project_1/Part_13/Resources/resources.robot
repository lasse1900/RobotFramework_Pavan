*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
LaunchBrowser
    [Arguments]              ${appurl}     ${appbrowser}
    Open Browser             ${appurl}     ${appbrowser}
    Maximize Browser Window