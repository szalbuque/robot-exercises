# Escreva um programa que encontre o valor máximo entre 2 números 
# Exemplo número1: 5 número2: 3
# Saída: O número 5 é maior que o número 3
*** Settings ***

*** Variables ***
${NUMERO1}    ${30}
${NUMERO2}    ${30}

*** Test Cases ***
exercicio21
    IF    ${NUMERO1}>${NUMERO2}
        Log To Console     O número ${NUMERO1} é maior que o número ${NUMERO2}
    ELSE IF     ${NUMERO1}<${NUMERO2}
        Log To Console     O número ${NUMERO2} é maior que o número ${NUMERO1}
    ELSE
        Log To Console     Os números são iguais.
    END