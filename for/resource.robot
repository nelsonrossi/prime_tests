***Variables***
@{list_pais}    Argentina       Itália      Inglaterra      França      Suiça



***Keywords***
contando de "${num_init}" a "${num_fin}"
    FOR  ${num}  IN RANGE   ${num_init}   ${num_fin}
        Log To Console  \n\n\nEstou no número: ${num}\n
    END

contando os países que viajarei
    FOR  ${pais}  IN    ${list_pais}
        Log To Console  \n\n\nViajarie para: ${pais}\n
    END