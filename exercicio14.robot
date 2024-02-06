# Escreva um programa que funcione como uma calculadora simples,
# contendo dois números e onde você pode selecionar uma operação soma (+), subtração(-), multiplicação(*) e divisão(/) 
*** Settings ***

*** Variables ***
${NUMERO1}    ${2}
${NUMERO2}    ${3}
${OPERACAO}    "DIV"

*** Test Cases ***
exercicio14
    IF  ${OPERACAO} == "SOMA"
        ${soma}    Evaluate    ${NUMERO1} + ${NUMERO2}
        Log To Console     ${NUMERO1} + ${NUMERO2} = ${soma}
    ELSE IF    ${OPERACAO} == "MULT"
        ${mult}    Evaluate    ${NUMERO1} * ${NUMERO2}
        Log To Console     ${NUMERO1} * ${NUMERO2} = ${mult}
    ELSE IF    ${OPERACAO} == "SUB"
        ${sub}    Evaluate    ${NUMERO1} - ${NUMERO2}
        Log To Console     ${NUMERO1} - ${NUMERO2} = ${sub}
    ELSE IF    ${OPERACAO} == "DIV"
        ${div}    Evaluate    ${NUMERO1} / ${NUMERO2}
        Log To Console     ${NUMERO1} / ${NUMERO2} = ${div}
    END
    