***Keywords***
contando de "${num_init}" a "${num_fin}" e imprimindo 5 ou 8
    FOR  ${num}  IN RANGE   ${num_init}   ${num_fin}
        IF  ${num}==5
            Log To Console  \nestou no número: ${num} \n
        ELSE IF   ${num}==8
            Log To Console  \nestou no número: ${num} \n
        END
    END