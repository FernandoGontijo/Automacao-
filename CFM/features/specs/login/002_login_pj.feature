#language: pt

Funcionalidade: Realizar login como pessoa juridica

Contexto:
Dado que estou na pagina inicial do portal CFM

@login_pj

Cenario: Realizar login como pessoa juridica
Quando eu seleciono a opcao de "pessoa juridica"
E informo o CRM "36172", seleciono a uf pr e clico em continuar, seleciono o prestador pr-prestador e insiro a senha "cn&n77&9" e clico em entrar 
Entao o sistema realiza login e vejo meu nome e CRM "36172/pr"