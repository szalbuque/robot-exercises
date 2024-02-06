# Calcule a área e o preço de um terreno 
# area = largura x comprimento 
# preco = área x preco do metro quadrado 
*** Settings ***

*** Variables ***
${LARGURA}    ${12}
${COMPRIMENTO}    ${30}
${PRECO_METRO_QUAD}    ${1000}

*** Test Cases ***
exercicio8
    ${area}    Evaluate    ${LARGURA}*${COMPRIMENTO}
    ${preco}    Evaluate    ${area}*${PRECO_METRO_QUAD}
    Log To Console    Área: ${area}
    Log To Console    Preço: ${preco}