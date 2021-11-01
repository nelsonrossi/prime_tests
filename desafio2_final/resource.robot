***Settings***
Library     SeleniumLibrary


***Variables***
${url}                  http://automationpractice.com/index.php
${button_women}         //a[@title='Women']
${summer_dresses}       //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
${subcategoria}         //*[@id="center_column"]/h1/span[1]


***Keywords***
Acessar a página home do site   
    [Documentation]  keyword responsável por abrir o site que será automatizado
    Go To  ${url}
    
Passar o mouse por cima da categoria Women no menu principal superior de categorias
    Wait Until Element Is Visible      ${button_women}
    Mouse Over                         ${button_women}  

Clicar na sub categoria "Summer Dresses"
    Click Element                      ${summer_dresses}

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible   ${subcategoria}
    Element Should Be Visible       ${subcategoria}

  
abrir o navegador
    Open Browser  browser=chrome

fechar o navegador
    Close Browser

