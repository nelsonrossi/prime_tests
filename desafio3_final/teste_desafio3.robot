***Settings***
Resource  ./resource.robot
Test Setup  abrir o navegador
Test Teardown  fechar o navegador

***Test Cases***
Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso