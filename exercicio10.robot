# Criar um algoritmo que a partir de um tempo em segundos e imprima no console no seguinte   
# formato:   hora:minuto:segundos
*** Settings ***

*** Variables ***
${SEGUNDOS}    ${7200}

*** Test Cases ***
exercicio10
    
    ${tot_minutos}    Evaluate    ${SEGUNDOS}/60
    ${tot_horas}    Evaluate    ${tot_minutos}/60
    ${horas}    Evaluate    int(${tot_horas})
    ${minutosdecimais}    Evaluate    ((${tot_horas}-${horas})*60)
    ${minutos}    Evaluate    int(${minutosdecimais})
    ${segundos}    Evaluate    int(((${minutosdecimais}-${minutos})*60))
    Log To Console    ${horas} : ${minutos} : ${segundos}



    
    