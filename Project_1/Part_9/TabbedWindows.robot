*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Tabs
    Open Browser               https://robotframework.org    chrome
    Sleep                      3
    Execute JavaScript         window.open("https://github.com/robotframework/SeleniumLibrary/", "_blank");    # Open a new tab
    @{WindowHandles}=          Get Window Handles
    Log To Console             Window Handles: @{WindowHandles}
    Switch Window              ${WindowHandles}[0]
    Sleep                      4  
    @{WindowIdentifier}=       Get Window Identifiers
    Sleep                      4    
    @{WindowNames}=            Get Window Names
    Sleep                      4    
    @{WindowTitle}=            Get Window Titles
    Sleep                      4 
    Log To Console             Changing tabs
    Click Link                 xpath://a[normalize-space()='AppiumLibrary']
    Sleep                      1   
    Switch Window              ${WindowHandles}[1]
    Sleep                      2
    Switch Window              ${WindowHandles}[0]
    Sleep                      1            

    Set Window Position        100    100
    ${x}  ${y}=                Get Window Position
    Log To Console             X-coordinator: ${x}
    Log To Console             Y-coordinator: ${y}
    Sleep                      4

    Set Window Size            800    600
    ${width}  ${height}=       Get Window Size
    Log To Console             width: ${width}
    Log To Console             height: ${height}
    Sleep                      4

    Switch Window              ${WindowHandles}[1]
    Log To Console             ${WindowHandles}[1]
    Sleep                      4    

    Switch Window              ${WindowHandles}[0]
    Log To Console             ${WindowHandles}[0]
    Sleep                      4

    Close Window
    Close Browser


