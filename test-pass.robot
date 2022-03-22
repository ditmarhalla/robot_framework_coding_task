*** Settings ***
Library     ./function.py    


*** Variables ***

@{NUMBERS}=      ${55}   ${-90}   ${12}   ${-54}   

*** Test Cases ***
[TEST-001]- Testing by just calling 
    [Tags]      TEST-001
    [Documentation]    This test case will test the by calling the function and a number 

    output      ${11} 

[TEST-002]- Testing by iteration 
    [Tags]      TEST-002
    [Documentation]    This test case will tests by iterating throug the list defined in the Variables NUMBERS outside the test case

    FOR     ${number}   IN      @{NUMBERS} 
        output      ${number} 
    END

[TEST-003]- Testing by variable inside test case
    [Tags]      TEST-003
    [Documentation]    This test case will test a variable define within the test case

    ${the_number}=     Set Variable   ${-88} 

    output      ${the_number} 
