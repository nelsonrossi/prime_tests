***Settings***
Library     SeleniumLibrary


***Variables***
${url}                  http://automationpractice.com/index.php
&{button_women}         //a[@title='Women']
# &{summer_dresses}       //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
# ...             icone_de_busca=//input[@id="search_query_top"]/following-sibling::button[@type='submit']
# &{produtos}     novabusca=//a[text="No results were found for your search&nbsp;"itemNãoExistente"]

***Keywords***
Acessar a página home do site   
    [Documentation]  keyword responsável por abrir o site que será automatizado
    Go To  ${url}
    
Passar o mouse por cima da categoria Women no menu principal superior de categorias
    Wait Until Element Is Visible      ${button_women}
    # Mouse Over                         ${button_women}  
#     Sleep  2s
#     # Click Element           ${summer_dresses}

# # # Digitar o nome do produto "${produto}" no campo de pesquisa
# #     Wait Until Element Is Visible       ${Home.campo_de_busca}
# #     Input Text                          ${Home.campo_de_busca}  ${produto}  

# # Clicar no botão pesquisar
# #     Wait Until Element Is Visible     ${Home.icone_de_busca}
# #     Click Element                     ${Home.icone_de_busca}

# # Conferir mensagem "${mensagem_esperada}"
# #     Page Should Contain  ${mensagem_esperada}
    

  
abrir o navegador
    Open Browser  browser=chrome

# fechar o navegador
#     Close Browser

