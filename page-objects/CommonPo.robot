*** Settings ***

Library          SeleniumLibrary    timeout=2000
*** Variables ***
${url}            https://sampleapp.tricentis.com/101/app.php
${navegador}      chrome

*** Keywords ***
Dado que o navegador pagina inicial esteja aberto
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window