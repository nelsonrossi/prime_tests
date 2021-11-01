***Settings***
Library  Collections

***Variables***
${pessoa}   nome=Nelson     sobrenome=Manzatto    idade=35    sexo=masculino    cidade=SP   fone=99999
@{lista_fruta}      laranja     banana      mamão       uva     maçã

***Keywords***
imprimir pessoa
    Log To Console  \n\nImprimindo pessoa: ${pessoa}\n

criando meu dicionario
    &{criando_pessoa}   Create Dictionary  nome=Nelson     sobrenome=Manzatto    idade=35    sexo=masculino    cidade=SP   fone=99999}
    Set Test Variable    ${criando_pessoa}

imprimir este dicionario
    Log To Console  \n\nImprimindo pessoa: &{criando_pessoa}\n

imprimir lista de frutas
    Log To Console      \n\nImprimindo lista de frutas: \n\n${lista_fruta}\n