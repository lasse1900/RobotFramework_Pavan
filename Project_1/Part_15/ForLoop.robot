
*** Test Cases ***

ForLoop1
    FOR    ${i}    IN RANGE   1    10
        Log To Console    ${i}

    END
    Log To Console    Outside loop

ForLoop2
    FOR    ${i}    IN   1 2 3 4 5 6 7 8
    #FOR    ${i}    IN   1  2  3  4  5  6  7  8
        Log To Console    ${i}

    END
    Log To Console    Outside loop

ForLoopWithList
    @{items}    Create List    1  2  3  4  5
    FOR  ${i}  IN  @{items}
        Log To Console    ${i}
        Log               ${i}
    END

ForLoop3
    FOR  ${i}  IN    john    david    smith    scott
        Log To Console    ${i}
    END

ForLoop4
    @{nameslist}    Create List    john    david    smith    scott
    FOR  ${i}  IN    @{nameslist}
        Log To Console    ${i}
    END

ForLoopWithExit
    @{items}    Create List    1    2    3    4    5
    FOR  ${i}  IN  @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END
    

