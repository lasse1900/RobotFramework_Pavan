*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    # Click Link       xpath://*[@id="save"]/span[1]/div/span

Click Regiter Link
    Click Link    ${link_Reg}

Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}
Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Address1
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Enter Postal Code
    [Arguments]    ${postalCode}
    Input Text    ${txt_postCode}    ${postalCode}

Select Country
    [Arguments]    ${country}
    # Select From List By Label    ${drp_country}    ${country}
    Select From List By Index    ${drp_country}    77
    

Enter User Name 
    [Arguments]    ${username}
    Input Text    ${txt_userName}     ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_Password}     ${password}

Enter Confirmed Password
    [Arguments]    ${confirmPassword}
    Input Text    ${txt_conformedPassword}     ${confirmPassword}

Click Submit
    Click Button    ${btn_submit}

Verify Succesfull Registration
    Page Should Contain    Thank you for registering.

Close my Browsers
    Close All Browsers

