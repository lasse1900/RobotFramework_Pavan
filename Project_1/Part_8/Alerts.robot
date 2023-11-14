*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
HnadlingAlerts
    Open Browser                https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element               xpath://*[@id="HTML9"]/div[1]/button[1]    # opens alert window
    Sleep                       2
    # Handle Alert                accept
    # Handle Alert                dismiss
    # Sleep                       2
    # handle alert                leave
    Alert Should Be Present    I am an alert box!



