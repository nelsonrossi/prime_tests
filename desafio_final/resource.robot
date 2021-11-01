***Settings***
Library     SeleniumLibrary


***Variables***
${url}          http://automationpractice.com/index.php
&{Home}         campo_de_busca=css:#search_query_top
...             icone_de_busca=//input[@id="search_query_top"]/following-sibling::button[@type='submit']

***Keywords***
Acessar a página home do site Automation Practice
    [Documentation]  keyword responsável por abrir o site que será automatizado
    Go To  ${url}
    
Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible       ${Home.campo_de_busca}
    Input Text                          ${Home.campo_de_busca}  ${produto}  

Clicar no botão pesquisar
    Wait Until Element Is Visible     ${Home.icone_de_busca}
    Click Element                     ${Home.icone_de_busca}

Conferir mensagem "${mensagem_esperada}"
    Page Should Contain  ${mensagem_esperada}
    

  
abrir o navegador
    Open Browser  browser=chrome

fechar o navegador
    Close Browser