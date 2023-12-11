*** Settings ***
Resource    ../locators/SendQuoteLocatorsPage.robot
Resource    CommonPo.robot
Library    String

*** Keywords ***
Quando Preencher campos obrigatorios de envio de cotacao    [Arguments]    ${email}    ${userName}    ${password}    ${confirmpassword}
    Input Text    ${inpEmail}              ${email}
    Input Text    ${inpUserName}           ${userName}
    Input Text    ${inpPassword}           ${password}
    Input Text    ${inpconfirmpassword}    ${confirmpassword}

Quando Clicar em enviar de envio de cotacao
    Click Button    ${btnSendEmail}

Entao Validar a mensagem de sucesso
    Wait Until Element Is Visible    ${txtSucesso}
    ${msg}    Get Text    ${txtSucesso}
    Element Text Should Be    ${txtSucesso}    Sending e-mail success!
    