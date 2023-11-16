*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TableValidators
    Open Browser             https://testautomationpractice.blogspot.com  chrome 
    Maximize Browser Window
    ${rows}=                 Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=                 Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    Log To Console            ${rows}    
    Log To Console            ${cols}   

    ${data}=                 Get Text             xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    Log To Console           ${data}
     
    Table Column Should Contain                   xpath://*[@id="HTML1"]/div[1]/table/tbody    2    Author
    Table Row Should Contain                      xpath://*[@id="HTML1"]/div[1]/table/tbody    4    Learn JS

    Table Header Should Contain                   xpath://*[@id="HTML1"]/div[1]/table/tbody    BookName
    # Table Cell Should Contain                     xpath://*[@id="HTML1"]/div[1]/table/tbody    5    2    Mukesh  #### Not working

    Close Browser