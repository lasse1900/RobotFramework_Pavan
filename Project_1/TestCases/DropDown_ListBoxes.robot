*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser    https://thetestingworld.com/testings   chrome
    Maximize Browser Window
    Sleep    1s   # Add a brief pause to ensure the page is loaded
    Page Should Contain    Testing
    Sleep    2

Handling DropDowns an Lists
    Select From List By Index    name:sex    2

    Select From List By Label    name:sex    Male

    Select From List By Label    name:country    Australia


