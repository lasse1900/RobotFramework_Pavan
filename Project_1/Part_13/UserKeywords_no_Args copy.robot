*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}         https://demo.guru99.com/test/newtours/
${BROWSER}     chrome


*** Keywords ***
LaunchBrowser
    Open Browser             ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
TC1
    LaunchBrowser
    Input Text             name:userName    Lasse
    Input Text             name:password    salasana21
    # Click Button           xpath://input[@name='submit']

