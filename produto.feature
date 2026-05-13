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
            Quando eu selecionar o <produto> na <cor> no <tamanho> e atribuir a <quantidade>
            E clicar no botão "Comprar"
            Então o portal deve direcionar para a página de checkout do portal EBAC-SHOP

            Exemplos:
            | produto                   | cor      | tamanho | quantidade |
            | "Augusta Pullover Jacket" | "Orange" | "M"     | 10         |

            Esquema do Cenário: Limpar os produtos selecionados
            Quando eu selecionar o <produto> na <cor> no <tamanho> e atribuir a <quantidade>
            E clicar no botão "Limpar" na página de seleção de produtos
            Então o portal deve voltar ao estado original

            Exemplos:
            | produto                   | cor   | tamanho | quantidade |
            | "Augusta Pullover Jacket" | "Red" | "L"     | 3          |
