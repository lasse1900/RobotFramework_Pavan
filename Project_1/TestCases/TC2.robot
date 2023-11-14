*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}        chrome
${URL}            https://dance-calendar.herokuapp.com
${USERNAME}       lasseboy  
${PASSWORD}       tanssija

*** Test Cases ***
LoginTest
    Open Browser        ${URL}    ${BROWSER}    
    Maximize Browser Window
    loginToApplication
    Sleep    4

*** Keywords ***
LoginToApplication
    # Input Text    id:username    lasseboy
    Input Text      xpath://input[@id='username']    ${USERNAME}
    # Input Text    id:password   tanssija
    Input Text      xpath://input[@id='password']    ${PASSWORD}
    Sleep    0.5
    Click Element   xpath://button[normalize-space()='login']
    Sleep    2
    Click Element   xpath://button[@class='ui mini button']




