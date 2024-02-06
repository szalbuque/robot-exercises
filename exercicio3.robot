#Construa um algoritmo que contenha o nome de um aluno, disciplina, quatro notas e exiba na tela a média delas. 

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