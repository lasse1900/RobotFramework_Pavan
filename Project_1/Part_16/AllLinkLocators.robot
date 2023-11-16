*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Read All Link Locators
    # Open Browser           https://example.com    chrome
    # Open Browser           https://demo.guru99.com/test/newtours/    chrome
    Open Browser            https://www.is.fi/    chrome        

    # Get all link elements on the page
    ${link_elements}=       Get Web Elements    xpath://a
    
    # Log the locators of all links
    FOR    ${link}    IN    @{link_elements}
           ${locator}=      Get Element Attribute    ${link}    href
           Log To Console   Link Locator: ${locator}
    END

    Close Browser
