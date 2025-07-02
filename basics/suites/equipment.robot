*** Settings ***
Resource    rentalstore.resource
Library     Collections

*** Variables ***
&{new_gear}    name=Falcon Helmet    manufacturer=FalconTech    year=2021    size=Medium    category=Mountain Biking    model=Pro    color=Matte Black    condition=B    skill_level=A    description=High-performance helmet for mountain bikers

*** Test Cases ***
Add New Gear Item
    Launch RentalStore Website
    Authenticate RentalStore User    alice    alice123
    Click    //*[@id="add-equipment"]
    # Fill in equipment details
    Type Text    //*[@name="name"]            ${new_gear}[name]
    Type Text    //*[@id="id_manufacturer"]   ${new_gear}[manufacturer]
    Type Text    //*[@id="id_year"]           ${new_gear}[year]
    Type Text    //*[@id="id_model"]          ${new_gear}[model]
    Type Text    //*[@id="id_color"]          ${new_gear}[color]
    Type Text    //*[@name="description"]     ${new_gear}[description]
    Select Options By    //*[@id="id_category"]    label    ${new_gear}[category]
    Select Options By    //*[@id="id_size"]        label    ${new_gear}[size]
    Click    input[name="condition"][value="${new_gear}[condition]"]
    Check Checkbox    input[name="skill_level"][value="${new_gear}[skill_level]"]
    Click Submit
