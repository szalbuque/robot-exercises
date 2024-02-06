*** Settings ***


*** Variables ***
${MAXIMO}    ${5}

*** Test Cases ***
for_example
    FOR  ${indice}  IN RANGE  ${MAXIMO}
        Log To Console     indice: ${indice}
    END
    