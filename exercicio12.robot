# Criar um algoritmo que a partir de quatro notas calcule a média. 
# Se a média for maior que 7 deverá ser exibida a mensagem aprovado, caso contrário deverá ser exibida a mensagem reprovado. 
*** Settings ***

*** Variables ***
${NOME}    ANA
${DISCIPLINA}    MATEMÁTICA
@{NOTAS}    ${10}    ${8}    ${7}    ${9}

*** Test Cases ***
exercicio3
    Log To Console     Média das notas da ${NOME} em ${DISCIPLINA}:
    ${media}    Evaluate    (${NOTAS}[0]+${NOTAS}[1]+${NOTAS}[2]+${NOTAS}[3])/4
    Log To Console    ${media}
    IF  ${media}>7
        Log To Console    Aprovado
    ELSE
        Log To Console    Reprovado
    END
    