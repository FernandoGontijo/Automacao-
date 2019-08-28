Dado("que estou na pagina de login da area restrita do portal CFM") do
   
    visit ("/restrito")
    sleep(1)
    @login = LoginPage.new


  end
  
  Quando("eu insiro meu login {string}, a senha {string} e clico em Acessar servicos") do |usuario, senha|

    @usuario = usuario
    sleep(1)
    @senha = senha
    
    @login.realizar_login_restrito(@usuario, @senha)
    sleep(1)


  end
  
  Entao("o sistema realiza login e visualizo meu nome {string}") do |nome|
  
    @nome = nome

    expect(page).to have_content(@nome)

    sleep(1)
    
  end
  