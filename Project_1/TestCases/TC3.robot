*** Settings ***
Documentation    This is a basic sample test for login into my ReactJS app site
Library  SeleniumLibrary

Suite Setup       Log To Console    Opening Browser
Suite Teardown    Log To Console    Closing Browser 

Test Setup        Log To Console    Login to Application
Test Teardown     Log To Console    Logout from application

*** Variables ***
${browser}    chrome
${url}        https://dance-calendar.herokuapp.com

*** Test Cases ***
LoginTest
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    loginToApplication
    Sleep    4

*** Keywords ***
LoginToApplication
    Input Text       xpath://input[@id='username']    lasseboy
    Input Text       xpath://input[@id='password']    tanssija
    Sleep    0.5
    Click Element    xpath://button[normalize-space()='login']
    Sleep    2
    Click Element    xpath://button[@class='ui mini button']




