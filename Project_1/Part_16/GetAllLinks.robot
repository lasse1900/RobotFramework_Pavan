*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
GetAllLinksTest
    # Open Browser               https://demo.guru99.com/test/newtours/     chrome 
    Open Browser               https://www.is.fi/    chrome     
    Maximize Browser Window

    ${AllLinksCount}=          Get Element Count    xpath://a
    Log To Console             ${AllLinksCount}

    @{LinkItems}    Create List

    FOR  ${i}  IN RANGE    1    ${AllLinksCount}+1
         ${LinkText}=           Get Text        xpath:(//a)[${i}]
         Log To Console         ${LinkText}
     END

    Close Browser

