*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${LOGIN URL}

Input username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id:Password   ${password}    

Click Login Button
    Click Element    xpath://button[@type='submit']

Click Logout Link
    Click Link    xpath://a[normalize-space()='Logout']

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard page should be visible
    Page Should Contain    Dashboard
