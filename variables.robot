*** Settings ***


*** Variables ***
${NOME}    Silvia
${IDADE}    55
${PESO}    75
${ALTURA}    1.65
${ESTADO_CIVIL}    Casada

*** Test Cases ***
Exemplo
    Log To Console    \nNome: ${NOME} \nIdade: ${IDADE} \nPeso: ${PESO} \nAltura: ${ALTURA} \nEstado civil: ${ESTADO_CIVIL}
