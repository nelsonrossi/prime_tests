***Settings***
Library     SeleniumLibrary

***Variables***
${url}              http://automationpractice.com/index.php
${entrar}           //a[contains(@class,'login')]
${caixa_criar}      //input[contains(@id,'create')]
${email_valido}     batmancavernosooooo@gmail.com
${button_create}    //span[contains(.,'Create an account')]
${first_name_box}   //input[contains(@id,'customer_firstname')]
${nome}             Batman
${last_name_box}    //input[contains(@id,'customer_lastname')]
${sobrenome}        Wayne
${password}         //input[contains(@id,'passwd')]
${senha}            123456
${day}              //*[@id="days"]/option[3]
${month}            //*[@id="months"]/option[6]
${year}             //*[@id="years"]/option[84]
${newslatter}       //*[@id="newsletter"]
${company}          //input[contains(@id,'company')]
${address}          //input[contains(@id,'address1')]
${address2}         //input[contains(@id,'address2')]
${city}             //input[contains(@id,'city')]
${state}            //*[@id="id_state"]/option[2]
${zip}              //*[@id="postcode"]
${add_inf}          //*[@id="other"]
${phone}            //*[@id="phone"]
${mobile}           //*[@id="phone_mobile"]
${alias}            //*[@id="alias"]
${register}         //*[@id="submitAccount"]
${logout}           //*[@id="header"]/div[2]/div/div/nav/div[2]
${login}            //*[@id="email"]
${password_login}   //*[@id="passwd"]
${singin_button}    //*[@id="SubmitLogin"]/span

***Keywords***

Acessar a página home do site
    [Documentation]  keyword responsável por abrir o site que será automatizado
    Go To  ${url}

Clicar em "${sign_in}"
    Wait Until Element Is Visible  ${entrar}
    Click Element  ${entrar}

Informar um e-mail válido
    Wait Until Element Is Visible   ${caixa_criar}
    Input Text                      ${caixa_criar}      ${email_valido}
    

Clicar em "Create an account"
    Click Element                  ${button_create}  

Preencher os dados obrigatórios
    Wait Until Element Is Visible   //input[contains(@id,'gender1')]
    Click Button                    //input[contains(@id,'gender1')]
    Input Text                      ${first_name_box}       ${nome}
    Input Text                      ${last_name_box}        ${sobrenome}
    Input Text                      ${password}             ${senha}
    Click Element                   ${day}
    Click Element                   ${month}
    Click Element                   ${year}
    Select Checkbox                 ${newslatter}
    Input Text                      ${company}              Indústrias Wayne
    Input Text                      ${address}              Street address Bat-caverna      
    Input Text                      ${address2}             Away from the Joker
    Input Text                      ${city}                 Gotham City
    Click Element                   ${state}                  
    Input Text                      ${zip}                  01295
    Input Text                      ${add_inf}              48684846
    Input Text                      ${phone}                991000698
    Input Text                      ${mobile}               991000698
    Input Text                      ${alias}                Bruce

Submeter cadastro
    Click Button                    ${register}

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible   ${logout}
    Click Element                   ${logout}
    Go to                           ${url}
    Wait Until Element Is Visible   ${entrar}
    Click Element                   ${entrar}
    Wait Until Element Is Visible   ${login}
    Input Text                      ${login}    ${email_valido}
    input Text                      ${password_login}   ${senha}
    Click Element                   ${singin_button}
    

abrir o navegador
    Open Browser  browser=chrome

fechar o navegador
    Close Browser