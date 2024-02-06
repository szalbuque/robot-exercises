*** Settings ***


*** Variables ***
${CELSIUS}    ${30}

*** Test Cases ***
Exercicio 6
    ${resultado}    Evaluate    (${CELSIUS} * 1.8 + 32)
    Log To Console     ${resultado}