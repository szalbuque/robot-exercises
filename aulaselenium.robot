*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Dados de configuração
${URL}    https://www.saucedemo.com/v1/
${BROWSER}    chrome

# Page Object Model (POM)
&{LOGIN_PAGE}
...    UsernameInput=id:user-name
...    PasswordInput=xpath://input[@name='password']
...    LoginButton=css:[class=btn_action]

*** Keywords ***

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Open Browser    url=${URL}	browser=${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible     locator=${LOGIN_PAGE.UsernameInput}
    Click Element    ${LOGIN_PAGE.UsernameInput}
    Input Text    ${LOGIN_PAGE.UsernameInput}    standard_user
    Input Text    ${LOGIN_PAGE.PasswordInput}    secret_sauce
    Click Element    ${LOGIN_PAGE.LoginButton}