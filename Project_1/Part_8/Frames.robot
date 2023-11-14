*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
HnadlingAlerts
    Open Browser                https://www.w3schools.com/tags/tag_audio.asp    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="accept-choices"]
    Sleep    2
    Close Browser



