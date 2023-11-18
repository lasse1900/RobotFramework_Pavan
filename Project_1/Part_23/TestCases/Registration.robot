*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Registration test
    Open my Browser            ${SiteUrl}    ${Browser}
    Sleep                      2
    # Click Button       xpath://*[@id="save"]   # Trying to close the Accept All button/link with no success
    Set Selenium Speed         0.2s
    Click Regiter Link
    Enter FirstName            Lasse
    Enter LastName             Ojala
    Enter Phone                0500-121219898
    Enter Email                lasse@gmail.com
    Enter Address1             Vantaa
    Enter City                 Espoo
    Enter State                South Finland
    Enter Postal Code          0780
    Select Country             Finland
    Enter User Name            admin
    Enter Password             admin
    Enter Confirmed Password   admin
    Click Submit
    Verify Succesfull Registration
    Close my Browsers

