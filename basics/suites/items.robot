*** Settings ***
Library    Browser
Resource   rentalstore.resource

*** Variables ***


*** Test Cases ***
Rent Equipment Item
    Launch RentalStore Website
    Authenticate RentalStore User    alice    alice123
    # Select the first equipment from the list
    Click    //*[@id="equipment-table"]/table/tbody/tr[1]/td[1]
    # Click on rent button
    Click Submit
