***Settings***
Resource  ./resource.robot
Test Setup  abrir o navegador
Test Teardown  fechar o navegador

***Test Cases***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site