*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MultipleBrowsersTest
    Open Browser               https://robotframework.org/    chrome

    Sleep                      3
    Open Browser               https://testautomationpractice.blogspot.com/    chrome
    Set Window Position        100    100
    ${x}  ${y}=                Get Window Position
    Log To Console             X-coordinator: ${x}
    Log To Console             Y-coordinator: ${y}
    Sleep                      4

    Switch Browser             1    
    ${title_1}=                Get Title
    Log To Console             ${title_1}

    Switch Browser             2   
    ${title_2}=                Get Title
    Log To Console             ${title_2}

    Sleep                      3    
    Close All Browsers