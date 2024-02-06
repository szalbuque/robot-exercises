#  Uma empresa paga R$10.00 por hora normal trabalhada e R$ 15.00 por hora extra. 
# Escreva um algoritmo que a partir de um total de horas normais trabalhadas e um 
# total de horas extras trabalhadas por um empregado em um ano calcule o salário anual deste trabalhador. 
# Exemplo : Entrada :  horas trabalhadas no ano : 1760 
# horas extras trabalhadas no ano : 400 
# Saída :    Seu salário anual é de : R$ 23600 

*** Settings ***

*** Variables ***
${HORAS_NORMAIS}    ${1760}
${HORAS_EXTRAS}    ${400}
${VALOR_HORA_NORMAL}    ${10}
${VALOR_HORA_EXTRA}    ${15}

*** Test Cases ***
exercicio5
    ${salario_anual}    Evaluate    (${HORAS_NORMAIS}*${VALOR_HORA_NORMAL}+${HORAS_EXTRAS}*${VALOR_HORA_EXTRA})
    Log To Console    Seu salario anual é de: ${salario_anual}