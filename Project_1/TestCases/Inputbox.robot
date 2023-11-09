*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}        http://demo.nopcommerce.com/
${user}    lauri.kyttala@gmail.com

*** Test Cases ***
TestInputBox
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    loginToApplication
    Sleep    4

*** Keywords ***
loginToApplication
    # relative xpaths taken with Selectors Hub
    Click Link    xpath://a[@class='ico-login']
    ${'email_txt'}   set variable     id:Email 
    Element Should Be Visible    ${'email_txt'}
    Element Should Be Enabled    ${'email_txt'}
    # Element Should Not Be Visible    ${'email_txt'}
    Input Text    ${'email_txt'}    ${user}
    Sleep    2
    Clear Element Text    ${'email_txt'}
    Sleep    2
    Close Browser

