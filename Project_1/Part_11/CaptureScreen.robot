*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
LoginTC
    Open Browser                  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep                         1
    Input Text                    xpath://input[@placeholder='Username']    Lasse
    Input Text                    xpath://input[@placeholder='Password']    salasana22
    Sleep                         5
    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img   Logo.png
    Capture Page Screenshot       LoginTC.png
    # OR with path
    # Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img   C:\coding\RobotFramework_Pavan\Project_1\Logo.png
    # Capture Page Screenshot       C:\coding\RobotFramework_Pavan\Project_1\LoginTC.png    



