*** Settings ***
Library    Browser

*** Variables ***
${base_url}    https://rentalstore.azurewebsites.net/

*** Keywords ***
Launch RentalStore Website
    New Browser    chromium    headless=False
    New Page       ${base_url}

Authenticate RentalStore User
    [Arguments]    ${username}    ${password}
    Click         id=login
    Type Text     //*[@id="id_username"]    ${username}
    Type Secret   //*[@id="id_password"]    secret=${password}
    Click         //*[@type="submit"]

Submit Form
    Click         //*[@type="submit"]
