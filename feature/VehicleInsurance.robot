*** Settings ***
Resource    ../page-objects/VehicleDataPo.robot
Resource    ../page-objects/InsurantDataPo.robot
Resource    ../page-objects/ProductDataPo.robot
Resource    ../page-objects/PriceOptionPo.robot
Resource    ../page-objects/SendQuotePo.robot

*** Variables ***
${make}                           BMW
${model}                          Scooter
${cylinderCapacity}               123
${enginePerformance}              123
${dateOfManufacture}              12/10/2023
${numberOfSeats}                  5
${numberofseatsmotorcycle}        3
${fuel}                           Petrol
${payload}                        121
${totalWeight}                    1000
${listprice}                      10000
${annualmileage}                  1000
${firstname}                      Adriana
${lastname}                       Hamal
${birthdate}                      12/10/1988
${country}                        Brazil
${zipcode}                        123123
${occupation}                     Employee
${starDate}                       12/10/2024
${insurancesUm}                   3.000.000,00
${meritrating}                    Bonus 1
${damageInsurance}                Full Coverage
${courtesyCar}                    Yes
${email}                          adaasdfadf@adfaf.com
${userName}                       adrianaHamal
${password}                       Adriana123
${confirmpassword}                Adriana123

*** Test Cases ***
Validar fluxo de compra de seguro com sucesso
    Dado que o navegador pagina inicial esteja aberto
    Quando Preencher campos obrigatorios dos dados do veiculo    ${make}    ${model}    ${cylinderCapacity}    ${enginePerformance}    ${dateOfManufacture}    ${numberOfSeats}    ${numberofseatsmotorcycle}    ${fuel}    ${payload}    ${totalWeight}    ${listprice}    ${annualmileage}
    Quando Clicar em next de dados do veiculo
    Quando Preencher campos obrigatorios de dados pessoais    ${firstname}    ${lastname}    ${birthdate}    ${country}    ${zipcode}    ${occupation}
    Quando Clicar em next em dados pessoais
    Quando Preencher campos obrigatorios de dados do produto    ${starDate}    ${insurancesUm}    ${meritrating}    ${damageInsurance}    ${courtesyCar}
    Quando Clicar em next em dados do produto
    Quando Selecionar opcao gold de opcoes de preco
    Quando Clicar em next de opcoes de preco
    Quando Preencher campos obrigatorios de envio de cotacao    ${email}    ${userName}    ${password}    ${confirmpassword}
    Quando Clicar em enviar de envio de cotacao
    Entao Validar a mensagem de sucesso