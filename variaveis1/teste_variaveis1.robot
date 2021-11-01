***Variables***

&{pessoa}
...     nome=Nelson
...     sobrenome=Manzatto
...     idade=35
...     sexo=masculino
...     cidade=SP
...     fone=999999\n

@{frutas}       laranja     mamao       uva     goiaba

***Test Cases***
Cenário 1: imprimir as informaçõs das pessoas tipo dicionário
    Log To Console  \n${pessoa.nome}
    Log To Console  ${pessoa.sobrenome}
    Log To Console  ${pessoa.idade}
    Log To Console  ${pessoa.sexo}
    Log To Console  ${pessoa.cidade}
    Log To Console  ${pessoa.fone}\n

Cenário 2: imprimir frutas tipo lista
    Log To Console  \n${frutas.[0]}
    Log To Console  ${frutas.[1]}
    Log To Console  ${frutas.[2]}
    Log To Console  ${frutas.[3]}\n