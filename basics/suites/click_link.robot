*** Settings ***
Library    Browser
Resource   rentalstore.resource

*** Variables ***
${base_url}    https://rentalstore.azurewebsites.net/

*** Test Cases ***
Navigation Bar Link Test
    Launch RentalStore Website
    Authenticate RentalStore User    alice    alice123
    Click All Navbar Links

*** Keywords ***
Click All Navbar Links
    [Documentation]    Loops through all navbar links and clicks them one by one
    @{links}    Get Elements    css=nav a.nav-link
    FOR    ${link}    IN    @{links}
        Click    ${link}
        Log To Console    Clicked link element: ${link}
        Sleep    2s
    END
