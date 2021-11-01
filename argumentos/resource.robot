***Variables***
${nome_email}
${sobrenome_email}
${idade_email}
${prefixo_email}        @robot.com
${email_pronto}


***Keywords***
Dado que eu recebo o nome "${nome}" sobrenome "${sobrenome}" e idade "${idade}"
    Set Test Variable       ${nome_email}  ${nome}
    Set Test Variable       ${sobrenome_email}  ${sobrenome}
    Set Test Variable       ${idade_email}  ${idade}


Quando monto o meu email
    ${email_pronto}     Catenate  ${nome_email}_${sobrenome_email}_${idade_email}${prefixo_email}
    Set Test Variable       ${email_pronto} 

Então imprimo o meu novo email
    Log To Console  \n\n Bem vindo ao munudo Robot, este é seu novo email: ${email_pronto}\n