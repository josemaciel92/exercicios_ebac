            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o portal da EBAC-SHOP

            Esquema do Cenário: Login com dados válidos
            Quando eu inserir <username>
            E inserir a <password>
            Então o portal deve direcionar para a home do portal EBAC-SHOP

            Exemplos:
            | username     | password    |
            | "JoseMaciel" | "Ebac1010"  | 

            Esquema do Cenário: Login com dados inválidos
            Quando eu inserir <username>
            E inserir a <password>
            Então o portal deve exibir uma <mensagem> de alerta ao usuário 

            Exemplos:
            | username     | password    | mensagem                     |
            | "JoseMaciel" | "/**"       | "Usuário ou senha inválidos" |

