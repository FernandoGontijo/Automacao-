#language: pt

Funcionalidade: Login como pessoa fisica

Contexto: 
Dado que estou na pagina inicial do Portal CFM

@login_pf

Cenario: Realizar login como pessoa fisica
Quando eu seleciona a opcao "pessoa fisica" 
E informo o CRM "41906", seleciono a uf pr e clico em continuar, insiro a senha "123" e clico em entrar 
Entao o sistema realiza login e visualizo meu nome e CRM "Medicos - 41906" 


