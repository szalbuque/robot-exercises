*** Settings ***


*** Variables ***
${PESO}    ${120}
${ALTURA}    ${1.65}

*** Test Cases ***
exercicio 20
    ${imc}    Evaluate    ${PESO} / (${ALTURA} * ${ALTURA})
    Log To Console    ${imc}
    IF    ${imc}<18.5
        Log To Console    Abaixo do peso normal
    ELSE IF     ${imc}>=18.5 and ${imc}<=24.9
        Log To Console    Peso normal
    ELSE IF     ${imc}>=25 and ${imc}<=29.9  
        Log To Console    Excesso de Peso
    ELSE IF     ${imc}>=30 and ${imc}<=34.9
        Log To Console    Obesidade classe I
    ELSE IF     ${imc}>=35 and ${imc}<=39.9
        Log To Console    Obesidade classe II
    ELSE IF     ${imc}>=40
        Log To Console    Obesidade classe III   
    END
