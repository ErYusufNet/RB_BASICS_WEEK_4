*** Settings ***
Resource    rentalstore.resource
Library     String

*** Variables ***
${username}        uniqueUser
${password}        securePass123

*** Test Cases ***
Register New Random User
    Launch RentalStore Website
    Navigate To Registration Page
    ${rand_num}    Generate Random String    4    chars=[NUMBERS]
    Register RentalStore User    Alex    ${rand_num}son    alex${rand_num}    alex${rand_num}@example.com    ${password}

*** Keywords ***
Launch RentalStore Website
    # Burada senin Open Browser gibi bir keyword olabilir, eklenmeli

Navigate To Registration Page
    Click    //*[@id="signup"]

Register RentalStore User
    [Arguments]    ${first}    ${last}    ${user}    ${email}    ${pass}
    Type Text    //*[@id="id_first_name"]    ${first}
    Type Text    //*[@id="id_last_name"]    ${last}
    Type Text    //*[@id="id_username"]    ${user}
    Type Text    //*[@id="id_email"]       ${email}
    Type Secret  //*[@id="id_password1"]   secret=${pass}
    Type Secret  //*[@id="id_password2"]   secret=${pass}
    Click Submit
    Sleep    5
