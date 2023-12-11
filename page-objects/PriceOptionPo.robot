*** Settings ***
Resource    ../locators/PriceOptionPageLocators.robot
Resource    CommonPo.robot

*** Keywords ***
Quando Selecionar opcao gold de opcoes de preco
    Wait Until Element Is Visible    ${btnSelectGold}
    Click Element    ${btnSelectGold}

Quando Clicar em next de opcoes de preco
    Wait Until Element Is Visible    ${btnNextsEndquote}   
    Click Button    ${btnNextsEndquote}
