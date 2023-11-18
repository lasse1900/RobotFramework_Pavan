*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/
${user}       tutorial
${pwd}        tutorial
 
*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    # Click Button       xpath://*[@id="save"]   # Trying to close the Accept All button/link with no success
    Sleep              2
    Enter UserName     ${user}
    Enter Password     ${pwd}
    Click SignIn
    Sleep              3
    Verify Succesfull Login
    Close my Browsers

