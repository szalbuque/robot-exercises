#  A partir de um número retorne como resposta se ele é positivo, negativo ou zero.
*** Settings ***

*** Variables ***
${NUMERO}    ${-1}

*** Test Cases ***
exercicio11
    IF    ${NUMERO}==0
        Log To Console    Zero
    ELSE IF     ${NUMERO}<0
        Log To Console    Negativo
    ELSE
        Log To Console    Positivo
    END