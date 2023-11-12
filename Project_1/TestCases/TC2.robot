*** Settings ***
Library  SeleniumLibrary


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
    # Input Text    id:username    lasseboy
    Input Text    xpath://input[@id='username']    lasseboy
    # Input Text    id:password   tanssija
    Input Text    xpath://input[@id='password']    tanssija
    Sleep    0.5
    Click Element    xpath://button[normalize-space()='login']
    Sleep    2
    Click Element    xpath://button[@class='ui mini button']




