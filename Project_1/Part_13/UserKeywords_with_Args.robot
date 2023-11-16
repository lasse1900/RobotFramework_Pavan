*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/resources.robot


*** Variables ***
${URL}         https://demo.guru99.com/test/newtours/
${BROWSER}     chrome




*** Test Cases ***
TC1
    LaunchBrowser          ${URL}    ${BROWSER}
    Input Text             name:userName    Lasse
    Input Text             name:password    salasana21
    # Click Button           xpath://input[@name='submit']

