*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest
    Open Browser                      http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    ${implicit_wait_time}=            Get Selenium Implicit Wait
    Log To Console                    Selenium default Implicit Wait is: ${implicit_wait_time}
    Set Selenium Implicit Wait        10  
    ${implicit_wait_time}=            Get Selenium Implicit Wait
    Log To Console                    Selenium default Implicit Wait now set to: ${implicit_wait_time}      
    Select Radio Button               Gender    M
    Input Text                        name:FirstName        Lasse
    Sleep                             2  
    Input Text                        name:LastName         Kallio
    Input Text                        name:Emails            customer@gmail.com    
    Input Text                        name:Password         Palakone5
    Input Text                        name:ConfirmPassword  Palakone5
