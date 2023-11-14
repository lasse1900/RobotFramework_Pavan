*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MyTestCase
    Open Browser        http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

    Open Browser        https://www.udemy.com/course/learn-selenium-with-python-using-robot-framework/    chrome
    Maximize Browser Window

    # Close Browser
    Close All Browsers

