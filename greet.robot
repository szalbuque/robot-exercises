*** Settings ***


*** Variables ***
#variaveis globais com todas as letras maiusculas
${GREETING}    Ola mundo

*** Test Cases ***
Greet User
    Log To Console    ${GREETING}