*** Settings ***


*** Variables ***
${IDADE}    ${55}

*** Test Cases ***
Math Examples
    Log To Console    Soma: ${1 + 3}

    ${IDADE}    Evaluate    ${IDADE} + 1

    Log To Console    Idade nova: ${IDADE}
    Log To Console    Soma: ${10-2}
    Log To Console    Multiplicação: ${20*5}
    Log To Console    Divisão: ${8//3}
    Log To Console    Resto: ${9%2}

    #variável criada dentro do escopo de um teste, letras minúsculas
    ${idadenova}    Set Variable    ${${IDADE}+2}
    Log To Console    ${idadenova}
