***Settings***
Resource    ./resource.robot


***Test Cases***
Cenário: criando email por argumentos embutidos
    Dado que eu recebo o nome "nelson" sobrenome "manzatto" e idade "35"
    Quando monto o meu email
    Então imprimo o meu novo email