#  Criar um algoritmo que a partir de dois números inteiros imprima a seguinte saída: 
#  Dividendo, Divisor, Quociente e Resto 
*** Settings ***

*** Variables ***
${DIVIDENDO}    ${20}
${DIVISOR}    ${3}

*** Test Cases ***
exercicio7
    ${quociente}    Evaluate    ${DIVIDENDO}/${DIVISOR}
    ${resto}    Evaluate    ${DIVIDENDO}%${DIVISOR}
    Log To Console    "${DIVIDENDO}" "${DIVISOR}" "${quociente}" "${resto}"