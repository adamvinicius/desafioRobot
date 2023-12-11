*** Settings ***
Resource    ../locators/InsurantDataPageLocators.robot
Resource    CommonPo.robot

*** Keywords ***
Quando Preencher campos obrigatorios de dados pessoais    [Arguments]    ${firstname}    ${lastname}    ${birthdate}    ${country}    ${zipcode}    ${occupation}
    Input Text                   ${inpFirstname}     ${firstname}
    Input Text                   ${inpLastname}      ${lastname}
    Input Text                   ${inpBirthdate}     ${birthdate}
    Select From List By Label    ${slcCountry}       ${country}
    Input Text                   ${inpZipcode}       ${zipcode}
    Select From List By Label    ${slcOccupation}    ${occupation}
    Click Element                ${inpHobbies}
    
Quando Clicar em next em dados pessoais
    Click Button    ${btnNextenterproductdata}
