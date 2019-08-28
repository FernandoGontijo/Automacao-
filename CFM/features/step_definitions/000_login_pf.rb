Dado("que estou na pagina inicial do Portal CFM") do

    visit ("/")
    @login = LoginPage.new
    sleep(1)

  end
  
  Quando("eu seleciona a opcao {string}") do |perfil|

    @perfil = perfil
    @login.escolher_perfil(@perfil)
    sleep(1)

  end
  
  Quando("informo o CRM {string}, seleciono a uf pr e clico em continuar, insiro a senha {string} e clico em entrar") do |crm, senha|

    @crm = crm
    sleep(1)
    @uf = "#ufCrm > option:nth-child(19)"
    @senha = senha

    @login.realizar_login_pf(@crm, @uf, @senha)
    sleep(1)
  

  end
  
  Entao("o sistema realiza login e visualizo meu nome e CRM {string}") do |nome|

    @nome = nome

    expect(page).to have_content(@nome)

    sleep(1)
    
  end

  
  