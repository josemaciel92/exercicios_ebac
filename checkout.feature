            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o portal da EBAC-SHOP

            Esquema do Cenário: Finalização do checkout com dados válidos
            Quando eu preencher os dados obrigatórios do cadastro com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | nome       | sobrenome | pais     | endereco       | cidade     | cep        | telefone    | email                          | mensagem                       |
            | "Augusta"  | "Pedrita" | "Brasil" | "Rua Vitoria"  | "Cajamar"  | "09399876" | "985664477" | "augustapedrita11@gmail.com"   | "Compra realizada com sucesso" |

            Esquema do Cenário: Validação de e-mail inválido no checkout
            Quando eu preencher os dados obrigatórios do cadastro com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | nome       | sobrenome | pais     | endereco       | cidade     | cep        | telefone    | email                   | mensagem         |
            | "Augusta"  | "Pedrita" | "Brasil" | "Rua Vitoria"  | "Cajamar"  | "09399876" | "985664477" | "augustapedrita11@gma"  | "Email inválido" |
            
            Esquema do Cenário: Validação de campos obrigatórios no checkout
            Quando eu preencher parcialmente os dados do cadastro com <nome>, <sobrenome> e <email>
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | nome      | sobrenome | email                         | mensagem                              |
            | "Augusta" | "Pedrita" | "augustapedrita11@gmail.com"  | "Existem campos obrigatórios vazios"  |

