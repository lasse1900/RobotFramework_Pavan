*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
HnadlingAlerts
    Open Browser               http://127.0.0.1:5500/StaticWebPage/index.html    chrome
    Maximize Browser Window
    Page Should Contain        My Website
    Select Frame               header
    Click Link                 is
    Sleep                      2    
    Unselect Frame
    Select Frame               content
    Click Link                 w3
    Sleep                      2 
    Unselect Frame








