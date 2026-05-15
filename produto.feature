            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o portal da EBAC-SHOP

            Esquema do Cenário: Selecionar produto válido
            Quando eu selecionar o <produto> e informar obrigatoriamente a <cor> o <tamanho> e a <quantidade> desejada
            E clicar no botão "Comprar"
            Então o portal deve direcionar para a página de checkout do portal EBAC-SHOP

            Exemplos:
            | produto                   | cor      | tamanho | quantidade |
            | "Augusta Pullover Jacket" | "Blue"   | "XL"    | 2          |
            | "RedBull T-shirt"         | "Orange" | "M"     | 8          |

            Esquema do Cenário: Limite máximo de 10 produtos por venda
            Quando eu selecionar um produto e atribuir a <quantidade>
            E clicar no botão "Comprar"
            Então o portal deve exibir a <mensagem>

            Exemplos:
            | quantidade  | mensagem                         |
            |  09         | "Produto adicionado ao carrinho" |
            |  10         | "Produto adicionado ao carrinho" |
            |  11         | "Quantidade máxima excedida"     |

            Cenário: Limpar os produtos selecionados
            Quando eu selecionar a cor, o tamanho e a quantidade do produto
            E clicar no botão "Limpar" na página de seleção de produtos
            Então o portal deve voltar ao estado original
