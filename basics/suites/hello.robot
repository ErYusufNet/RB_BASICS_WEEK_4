*** Keywords ***
Greeting To Console
    Log To Console    \nHello from the terminal window!\n
    
Greet Person
    [Arguments]   ${name}
    Log To Console    \nHello, ${name}

    