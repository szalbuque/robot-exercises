*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/v1/
${BROWSER}    chrome

*** Keywords ***

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Open Browser    url=${URL}	browser=${BROWSER}
    Maximize Browser Window
    Input Text    id:user-name    teste
    Click Element    id:login-button