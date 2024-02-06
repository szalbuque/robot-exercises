*** Settings ***

*** Variables ***
${NOME}    Ana

*** Test Cases ***
Example
    IF  "${NOME}" == "Ana"
        Log To Console      O nome é Ana
    ELSE
        Log To Console    Acesso negado!
    END
    