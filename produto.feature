#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Para depois inserir no carrinho

Contexto:
Dado que eu acesse o portal da EBAC-SHOP

Cenário: Selecionar produto válido
Quando eu selecionar o produto "Augusta Pullover Jacket"
E informar a cor "Blue", o tamanho "XL" e a quantidade "2"
E clicar no botão "Comprar"
Então o portal deve direcionar para a página de checkout do portal EBAC-SHOP

Esquema do Cenário: Validar limite máximo de produtos por venda
Quando eu selecionar um produto
E informar a quantidade <quantidade>
E clicar no botão "Comprar"
Então o sistema deve exibir a mensagem <mensagem>

Exemplos:
| quantidade | mensagem                         |
| 9           | "Produto adicionado ao carrinho" |
| 10          | "Produto adicionado ao carrinho" |
| 11          | "Quantidade máxima excedida"     |

Cenário: Limpar configurações do produto
Quando eu selecionar a cor, o tamanho e a quantidade do produto
E clicar no botão "Limpar"
Então o sistema deve retornar os campos ao estado original
