# Fazer um algoritmo que a partir da distância percorrida em km e o total gasto de combustível, no final  exiba o consumo médio do carro. 
*** Settings ***

*** Variables ***
${DISTANCIA}    ${200}
${COMBUSTIVEL}    ${500}

*** Test Cases ***
exercicio9
    ${consumo_medio}    Evaluate    ${COMBUSTIVEL}/${DISTANCIA}
    Log To Console    Consumo médio: ${consumo_medio} reais/litro