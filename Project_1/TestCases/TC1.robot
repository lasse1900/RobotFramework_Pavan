*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}        http://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    # Open Browser    http://demo.nopcommerce.com/    chrome    executable_path=c:/bin/apu/chromedriver.exe
    # Open Browser    http://demo.nopcommerce.com/    chrome    executable_path=c:/coding/RobotFramework_Pavan/chromedriver.exe
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    loginToApplication
    Sleep    4

*** Keywords ***
loginToApplication
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text    id:Email    lkyttl@gmail.com
    Input Text    id:Password    Tammiholma123
    Sleep    0.5
    Click Element    xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    Sleep    2
    Click Element    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a



