***Test Cases***
Cenário 1: entendendo como o robot funciona por linha de comando
    [Tags]      chamando_robot
    Log To Console  \n\nOlá Batman!\n

Cenário 2: rodando mais um teste
    Log To Console  \n\nExecutei mais um teste!\n

Cenário 3: recebendo um valor pelo terminal
    [Tags]      recebendo_valor
    Log To Console  \n\nOlá ${valor_do_terminal}!!\n