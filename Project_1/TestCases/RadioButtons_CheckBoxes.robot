*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser    https://thetestingworld.com/testings   chrome
    Maximize Browser Window
    Sleep    1s   # Add a brief pause to ensure the page is loaded
    Page Should Contain    Testing
    Sleep    2

Test Radio Buttons
    Page Should Contain Radio Button    xpath://input[@value='home']
    Page Should Contain Radio Button    xpath://input[@value='office']
    # Select Radio Button    Do you like the site?    Impressive
Select Radio Buttons
    # with name and id
    # <input style="position:inherit;" name="add_type" type="radio" value="home">
    Select Radio Button    add_type    home

Select Checkboxes
    Select Checkbox    terms    

