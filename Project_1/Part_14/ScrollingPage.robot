*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ScrollingTest
    Open Browser               https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome    
    Maximize Browser Window
    # Execute Javascript        window.scrollTo(0,2500)                            # scroll to certain point
    # Sleep                       5    
    # Scroll Element Into View    xpath://img[@alt='Flag of Finland']              # scroll to certain item
    # Sleep                       5 
    Execute Javascript            window.scrollTo(0,document.body.scrollHeight)    # end of the page
    Sleep                         5     
    Execute Javascript            window.scrollTo(0,-document.body.scrollHeight)
    Sleep                         5  
    Close Browser    