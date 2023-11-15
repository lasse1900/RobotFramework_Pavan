*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
NavigationTest
    Open Browser                https://www.google.com      chrome
    Maximize Browser Window
    Click Button                xpath://*[@id="L2AGLb"]
    Sleep                       3
    ${location}=                Get Location
    Log To Console              ${location}   

    Go To                       https://github.com/robotframework
    Maximize Browser Window     
    Sleep                       3
    ${location}=                Get Location
    Log To Console              ${location}   

    Go Back    
    ${location}=                Get Location
    Log To Console              ${location}   
    Sleep                       3    