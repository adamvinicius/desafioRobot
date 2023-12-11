*** Settings ***

Resource    ../locators/VehicleDataPageLocators.robot
Resource    CommonPo.robot

*** Keywords ***
Quando Preencher campos obrigatorios dos dados do veiculo    [Arguments]    ${make}    ${model}    ${cylinderCapacity}    ${enginePerformance}    ${dateOfManufacture}    ${numberOfSeats}    ${numberofseatsmotorcycle}    ${fuel}    ${payload}    ${totalWeight}    ${listprice}    ${annualmileage}
    Select From List By Label    ${slcMake}                 ${make}
    Select From List By Label    ${slcModel}                ${model}
    Input Text                   ${inpCylinderCapacity}     ${cylinderCapacity}
    Input Text                   ${inpEnginePerformance}    ${enginePerformance}
    Input Text                   ${inpDateOfManufacture}    ${dateOfManufacture}
    Select From List By Label    ${slcNumberOfSeats}        ${numberOfSeats}
    Select From List By Label    ${slcNumberofseatsmotorcycle}    ${numberofseatsmotorcycle}
    Select From List By Label    ${slcFuel}                 ${fuel}
    Input Text                   ${inpPayload}              ${payload}
    Input Text                   ${inpTotalWeight}          ${totalWeight}
    Input Text                   ${inpListprice}            ${listprice}
    Input Text                   ${inpAnnualmileage}        ${annualmileage}

Quando Clicar em next de dados do veiculo
    Click Button    ${btnNextenterinsurantdata}
