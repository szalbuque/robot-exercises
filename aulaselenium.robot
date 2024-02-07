*** Settings ***
Library    SeleniumLibrary

Test Setup  Run Keywords
...    Open Browser    url=${URL}    browser=${BROWSER}     AND
...    SeleniumLibrary.Maximize Browser Window

Test Teardown    Close Browser

*** Variables ***
# Dados de configuração
${URL}    https://www.saucedemo.com/v1/
${BROWSER}    chrome
${USUARIO_VALIDO}    standard_user
${SENHA_VALIDA}    secret_sauce
${USUARIO_INVALIDO}    wrong_user

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

Validar que o login foi feito com sucesso
    ${url}=    Get Location
    ${first}=    Set Variable    https://www.saucedemo.com/v1/inventory.html
    Should Be Equal    ${first}    ${url}

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Realizar login com ${USUARIO_VALIDO} e ${SENHA_VALIDA}
    Validar que o login foi feito com sucesso

TC002 - Realizar login com usuário inválido
    Realizar login com ${USUARIO_INVALIDO} e ${SENHA_VALIDA}