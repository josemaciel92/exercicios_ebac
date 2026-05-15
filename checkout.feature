            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o portal da EBAC-SHOP

            Cenário: Finalização de compra com dados válidos
            Quando eu preencher todos os campos obrigatórios do cadastro
            E informar os seguintes dados:
            | nome      | sobrenome | pais     | endereco      | cidade    | cep        | telefone   | email                         |
            | "Augusta" | "Pedrita" | "Brasil" | "Rua Vitória" | "Cajamar" | "09399876" | "985664477" | "augustapedrita11@gmail.com" |
            | "Leonard" | "Silveir" | "Brasil" | "Rua Clelias" | "Osascos" | "09978787" | "094737667" | "leonardsilveira2@gmail.com" |
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem "Compra realizada com sucesso"

            Cenário: Validar e-mail em formato inválido
            Quando eu preencher todos os campos obrigatórios do cadastro
            E informar o e-mail "augustapedrita11@gma"
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem "E-mail inválido"
            
            Cenário: Validação de campos obrigatórios no checkout
            Quando eu inserir o nome "Jose" e sobrenome "Carlos"
            E clicar no botão "FINALIZAR COMPRA"
            Então o sistema deve exibir a mensagem "Existem campos obrigatórios vazios"
            
