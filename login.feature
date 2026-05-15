#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse o portal da EBAC-SHOP

Cenário: Autenticação válida
Quando eu inserir o usuário "JoseMaciel"
E inserir a senha "Ebac1010"
Então deve ser exibido a mensagem de boas vindas "Ola Jose"

Cenário: Senha inválida
Quando eu inserir o usuário "JoseMaciel"
E inserir a senha "11/**"
Então deve ser exibido a mensagem "Usuário ou senha inválidos"
