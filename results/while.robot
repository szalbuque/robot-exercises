*** Settings ***


*** Variables ***
${INDICE}    ${10}

*** Test Cases ***
while_example
    WHILE   ${INDICE}>0
        Log To Console  Indice: ${INDICE}
        ${INDICE}    Evaluate    ${INDICE}-1
    END
        