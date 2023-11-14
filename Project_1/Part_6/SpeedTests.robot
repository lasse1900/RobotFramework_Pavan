*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest
    ${speed}=  Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Set Selenium Speed    2

    Select Radio Button   Gender    M
    Input Text    xpath://*[@id="FirstName"]               Lasse
    Input Text    xpath://*[@id="LastName"]                Kallio
    Input Text    xpath://*[@id='Email']             customer@gmail.com
    Input Text    xpath://*[@id='Password']          Palakone5
    Input Text    xpath://*[@id='ConfirmPassword']   Palakone5
    # Click Button  xpath://*[@id='register-button']
    ${speed}=  Get Selenium Speed
    Log To Console    ${speed}

    # Input Text    name:FirstName        Lasse
    # Input Text    name:LastName         Kallio
    # Input Text    name:Email            customer@gmail.com    
    # Input Text    name:Password         Palakone5
    # Input Text    name:ConfirmPassword  Palakone5
      