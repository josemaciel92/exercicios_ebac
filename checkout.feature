            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o portal da EBAC-SHOP

            Esquema do Cenário: Cadastramento dos dados
            Quando eu preencher obrigatoriamente os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <enderecoDeEmail>
            E clicar no botão "FINALIZAR COMPRA"
            Então o portal deve exibir a <mensagem>

            Exemplos:
            | nome       | sobrenome | pais     | endereco       | cidade     | cep        | telefone    | enderecoDeEmail                | mensagem                       |
            | "Augusta"  | "Pedrita" | "Brasil" | "Rua Vitoria"  | "Cajamar"  | "09399876" | "985664477" | "augustapedrita11@gmail.com"   | "Compra realizada com sucesso" |

            Esquema do Cenário: Cadastramento com dados inválidos
            Quando eu preencher obrigatoriamente os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <enderecoDeEmail>
            E clicar no botão "FINALIZAR COMPRA"
            Então o portal deve exibir a <mensagem>

            Exemplos:
            | nome       | sobrenome | pais     | endereco       | cidade     | cep        | telefone    | enderecoDeEmail         | mensagem         |
            | "Augusta"  | "Pedrita" | "Brasil" | "Rua Vitoria"  | "Cajamar"  | "09399876" | "985664477" | "augustapedrita11@gma"  | "Email inválido" |
            
            Esquema do Cenário: Validação de campos obrigatórios no checkout
            Quando eu preencher obrigatoriamente os campos <nome>, <sobrenome> e <enderecoDeEmail>
            E deixar os campos <pais>, <endereco>, <cidade>, <cep> e <telefone> vazios
            E clicar no botão "FINALIZAR COMPRA"
            Então o portal deve exibir a <mensagem>

            Exemplos:
            | nome       | sobrenome | pais     | endereco | cidade | cep | telefone | enderecoDeEmail                | mensagem                       |
            | "Augusta"  | "Pedrita" | "Brasil" |          |        |     |          | "augustapedrita11@gmail.com"   | "Dados obrigatórios faltantes" |

