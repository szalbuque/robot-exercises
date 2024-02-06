#Construir um algoritmo que a partir de um número informado exiba na tela o seu sucessor e antecessor. 
*** Settings ***

*** Variables ***
${NUMERO}    ${4}

*** Test Cases ***
exercicio2
    ${antecessor}    Evaluate    ${NUMERO}-1
    ${sucessor}    Evaluate    ${NUMERO}+1
    Log To Console    Antecessor ${antecessor}
    Log To Console    Sucessor ${sucessor}