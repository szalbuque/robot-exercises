*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Dados de configuração
${URL}    https://www.saucedemo.com/v1/
${BROWSER}    chrome
${USUARIO_VALIDO}    standard_user
${SENHA_VALIDA}    secret_sauce

# Page Object Model (POM)
&{LOGIN_PAGE}
...    UsernameInput=id:user-name
...    PasswordInput=xpath://input[@name='password']
...    LoginButton=css:[class=btn_action]

*** Keywords ***

### Ações ###

Realizar login com ${username} e ${password}
    Input Text    ${LOGIN_PAGE.UsernameInput}    ${username}
    Input Text    ${LOGIN_PAGE.PasswordInput}    ${password}
    Click Element    ${LOGIN_PAGE.LoginButton}

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Open Browser    url=${URL}	browser=${BROWSER}
    Maximize Browser Window
    Realizar login com ${USUARIO_VALIDO} e ${SENHA_VALIDA}
