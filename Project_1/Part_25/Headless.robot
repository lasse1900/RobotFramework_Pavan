*** Settings ***
Documentation    This is a basic sample test for login into an example ReactJS app site. Default browser is chrome mode is headless. 
...    Default is that selenium drivers are under certain directory e.g. c:/bin/ which is added to the path. Now chromedriver is also here in root.
...    Run test with command: [robot.exe -d Logs TestCases] or [robot -d Logs -t "LoginTest" TestCases]

Library  SeleniumLibrary

Suite Setup      Log To Console    Opening Suite - Inserting possible test data
Test Setup       Open Browser      ${URL}    ${BROWSER_HEADLESS}
Test Teardown    Close Browser
Suite Teardown   Log To Console    Closing Suite - Cleanup

*** Variables ***
${BROWSER_HEADLESS}    headlesschrome
${url}                 https://dance-calendar.herokuapp.com
${USERNAME}            lasseboy  
${PASSWORD}            tanssija


*** Test Cases ***

LoginToApplication
    Input Text       xpath://input[@id='username']    ${USERNAME}
    Input Text       xpath://input[@id='password']    ${PASSWORD}
    Sleep    0.5
    Click Element    xpath://button[normalize-space()='login']         # Login button
    Sleep    2
    Click Element    xpath://button[@class='ui mini button']           # Logout button