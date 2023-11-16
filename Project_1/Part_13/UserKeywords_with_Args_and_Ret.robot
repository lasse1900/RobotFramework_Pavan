*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}         https://demo.guru99.com/test/newtours/
${BROWSER}     chrome


*** Keywords ***
LaunchBrowser
    [Arguments]              ${appurl}     ${appbrowser}
    Open Browser             ${appurl}     ${appbrowser}
    Maximize Browser Window
    ${title}=                Get Title
    [Return]                 ${title}

*** Test Cases ***
TC1
    ${PageTitle}=          LaunchBrowser          ${URL}    ${BROWSER}
    Log To Console         ${PageTitle} 
    Log                    ${PageTitle}       
    Input Text             name:userName    Lasse
    Input Text             name:password    salasana21
    # Click Button           xpath://input[@name='submit']

