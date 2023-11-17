*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]    regression
    Log To Console    This is user reg test 
    Log To Console    User registration is over

TC2 LoginTest
    [Tags]    sanity
    Log To Console    This is login test
    Log To Console    Login test is over

TC3 Change user Settings  
    [Tags]    regression  
    Log To Console    This is changing user settings test 
    Log To Console    Change user settings test is over

TC4 Logout Test
    [Tags]    final
    Log To Console    This is a logout test
    Log To Console    Logout test is over

