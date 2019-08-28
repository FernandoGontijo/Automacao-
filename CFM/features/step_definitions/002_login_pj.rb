Dado("que estou na pagina inicial do portal CFM") do

  visit ("/")
  @login = LoginPage.new
  sleep(1)

end
  
Quando("eu seleciono a opcao de {string}") do |perfil|

  @perfil = perfil
  @login.escolher_perfil(@perfil)
  sleep(1)

end
  
Quando("informo o CRM {string}, seleciono a uf pr e clico em continuar, seleciono o prestador pr-prestador e insiro a senha {string} e clico em entrar") do |crm, senha|
  
  @crm = crm
  sleep(1)
  @senha = senha
  @uf = "#ufCrmPJ > option:nth-child(19)"
  @prestador = "#prestador > option:nth-child(3)"

  @login.realizar_login_pj(@crm, @uf, @prestador, @senha)
  sleep(1)

end


Entao("o sistema realiza login e vejo meu nome e CRM {string}") do |nome|
 
  @nome = nome

  expect(page).to have_content(@nome)

  sleep(1)
  

end
