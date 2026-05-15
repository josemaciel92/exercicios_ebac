#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse o portal da EBAC-SHOP

Cenário: Login com credenciais válidas
Quando eu inserir o usuário "JoseMaciel"
E inserir a senha "Ebac1010"
Então o portal deve direcionar para a home do portal EBAC-SHOP

Esquema do Cenário: Login com credenciais inválidas
Quando eu inserir o usuário <usuario>
E inserir a senha <senha>
Então o sistema deve exibir a mensagem <mensagem>

Exemplos:
| usuario       | senha      | mensagem                       |
| "JoseMaciel" | "/**"     | "Usuário ou senha inválidos" |
| ""            | "Ebac1010" | "Usuário ou senha inválidos" |
| "JoseMaciel" | ""        | "Usuário ou senha inválidos" |
