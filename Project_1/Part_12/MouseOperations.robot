*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    # Right click/open open context menu
    Open Browser         https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome 
    Open Context Menu    xpath:/html/body/div/section/div/div/div/p/span
    Sleep                3

    # Double click action
    Go To                https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep                3    

    # Drag and Drop
    Go To                 http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html    
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    3
    Close Browser





