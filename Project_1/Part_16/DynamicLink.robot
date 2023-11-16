*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Read Dynamic Link
    Open Browser    https://example.com    chrome
    
    # Identify the dynamic link using a locator (modify this according to your page structure)
    ${dynamic_link}=    Get Element Attribute    xpath:/html/body/div/p[2]/a   href
    
    # Log the dynamic link to the console
    Log To Console    Dynamic Link: ${dynamic_link}
    
    Close Browser
