#language: pt

Funcionalidade: Login na area restrita


Contexto: 
Dado que estou na pagina de login da area restrita do portal CFM

@login_restrito


Cenario: Realizar login na area restrita do portal CFM
Quando eu insiro meu login "ODANIELE", a senha "123" e clico em Acessar servicos
Entao o sistema realiza login e visualizo meu nome "Daniele De Souza Oliveira"

