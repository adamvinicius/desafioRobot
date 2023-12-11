*** Settings ***
Resource    ../locators/ProductDataPageLocators.robot
Resource    CommonPo.robot

*** Keywords ***
Quando Preencher campos obrigatorios de dados do produto    [Arguments]    ${starDate}    ${insurancesUm}    ${meritrating}    ${damageInsurance}    ${courtesyCar}
    Input Text                   ${inpStarDate}           ${starDate}
    Select From List By Label    ${slcInsurancesUm}       ${insurancesUm}
    Select From List By Label    ${slcMeritrating}        ${meritrating}
    Select From List By Label    ${slcDamageInsurance}    ${damageInsurance}
    Click Element                ${inpEuroProtection}
    Select From List By Label    ${slcCourtesyCar}        ${courtesyCar}

Quando Clicar em next em dados do produto
    Click Button    ${btnNextselectpriceoption}
