*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest
    Open Browser                      http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    ${timeout}=                       Get Selenium Timeout
    Log To Console                    Selenium default timeout is: ${timeout}
    Set Selenium Timeout              7
    Wait Until Page Contains          Registration    # 5 secs
    Select Radio Button               Gender    M
    Input Text                        name:FirstName        Lasse
    Input Text                        name:LastName         Kallio
    Input Text                        name:Email            customer@gmail.com    
    Input Text                        name:Password         Palakone5
    Input Text                        name:ConfirmPassword  Palakone5
