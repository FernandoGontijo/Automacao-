Dado("que acesso o Portal CFM") do
    
      visit ("http://10.2.2.200/portal/")
      @realizar_login = LoginPage.new
      @escolher_certidao = DocumentosPage.new
      @escolher_menu = MenuPage.new
  end
  
  Quando("eu realizo login como {string}") do |perfil|
    
      @perfil = perfil
      @realizar_login.realizar_login(@perfil)
      

  end
  
  Quando("clico em {string} e seleciono a opcao {string}") do |menu, certidao|
    
      @menu = menu
      @certidao = certidao 

      @escolher_menu.selecionar_menu(@menu)
      @escolher_certidao.emitir_certidao(@certidao)

  end
  
  Entao("o sistema abre o {string} contendo a Certidao de Aposentadoria.") do |mensagem|

      @mensagem = mensagem
      expect(page).to have_content(@mensagem)


  end
  
  Entao("o sistema abre o {string} contendo a Certidao de Responsabilidade Técninca para Especialidade.") do |mensagem|
    
    
    

  end
  
  Entao("o sistema abre o {string} contendo a Certidão de Regularidade de inscrição") do |mensagem|
    


  end
  
  