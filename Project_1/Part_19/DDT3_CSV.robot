*** Settings ***
Library             SeleniumLibrary
Resource            Resources/login_resources.robot
Library             DataDriver    TestData/LoginData.csv

Suite Setup         Open my Browser
Suite Teardown      Close Browsers
Test Template       Invalid Login


*** Test Cases ***    username    password
LoginTestCasewithCSV   using ${username} and  ${password}
    

*** Keywords ***
Invalid Login
    [Arguments]        ${username}    ${password}
    Input username     ${username}
    Input pwd          ${password}
    Click Login Button
    Error message should be visible