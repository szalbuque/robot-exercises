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
${USUARIO_BLOQUEADO}    locked_out_user

# Page Object Model (POM)
&{LOGIN_PAGE}
...    UsernameInput=id:user-name
...    PasswordInput=xpath://input[@name='password']
...    LoginButton=css:[class=btn_action]
...    ErrorMsg=xpath://h3

&{INVENTORY_PAGE}
...    BurgerMenuButton=//div[@class='bm-burger-button']//button
...    LinkLogout=id:logout_sidebar_link

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

Validar que o login não foi feito com usuário bloqueado
    ${msg-erro}=     Get Text    ${LOGINPAGE.ErrorMsg}
    ${msg-esperada}=    Set Variable    Sorry, this user has been locked out.
    Should Contain    ${msg-erro}    ${msg-esperada}

Realizar logout
    Click Element    ${INVENTORY_PAGE.BurgerMenuButton}
    Wait Until Element Is Visible    locator=${INVENTORY_PAGE.LinkLogout}
    Click Element    ${INVENTORY_PAGE.LinkLogout}

Validar logout
    ${url}=    Get Location
    ${home}=    Set Variable    https://www.saucedemo.com/v1/index.html
    Should Be Equal    ${url}    ${home}

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Realizar login com ${USUARIO_VALIDO} e ${SENHA_VALIDA}
    Validar que o login foi feito com sucesso

TC002 - Realizar login com usuário bloqueado
    Realizar login com ${USUARIO_BLOQUEADO} e ${SENHA_VALIDA}

TC003 - Realizar logout
    Realizar login com ${USUARIO_VALIDO} e ${SENHA_VALIDA}
    Realizar logout
    Validar logout