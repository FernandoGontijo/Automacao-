=begin

    * Classe com objetivo de tratar login e logout no sistema:
        1 - Logar no sistema
        2 - Deslogar no sistema
        
    * Script desenvolvido por Fernando Sousa Gontijo - Célula 386
    
    * Contatos: 
        1 - Email: fernando.gontijos@hotmail.com
        2 - Celular: (38) 9 9938-0626
        3 - Data: 27/06/2019

=end 

class LoginPage < SitePrism::Page


    #Login Pessoa Física

    element :pessoa_fisica_div, "#pessoaFisica"
    element :numero_crm_pf_input, "#lbCrm"
    element :uf_crm_pf_select, "#ufCrm"
    element :continuar_pf_button, ".btn"
    element :senha_pf_input, "#lbSenha"
    element :entrar_pf_button, "button.btn:nth-child(9)"

    #Login Pessoa Jurídica

    element :pessoa_juridica_div, "#pessoaJuridica"
    element :numero_crm_pj_input, "#lbCrmJuridica"
    element :uf_crm_pj_select, "#ufCrmPJ"
    element :continuar_pj_button, ".btn"
    element :prestador_pj_select, "#prestador"
    element :senha_pj_input, "#lbSenhaPJ"
    element :entrar_pj_button, "button.btn:nth-child(11)"

    #Login Area Restrita 

    element :usuario_restrito_input, "body > div.content > div > div.ng-scope > div > div > div > div.col-sm-12.col-md-5.col-lg-4 > div > div.panel-body > div > div > form > div:nth-child(1) > input"
    element :senha_restrito_input, "body > div.content > div > div.ng-scope > div > div > div > div.col-sm-12.col-md-5.col-lg-4 > div > div.panel-body > div > div > form > div:nth-child(2) > input"
    element :acessar_restrito_button, ".btn"


    #Metodo para escolher com qual perfil logar

    def escolher_perfil(perfil)

        @perfil = perfil

        case @perfil

         when "pessoa fisica"

            pessoa_fisica_div.click

         when "pessoa juridica"

            pessoa_juridica_div.click

         when "area restrita"

            visit "/restrito"

         else 

            puts "Erro na selecao do perfil para acesso ao Portal CFM"

         end
    
    end

    #Metodos para realizar login como pessoa juridica 

    def realizar_login_pj(crm, uf, prestador, senha) 
 
        @crm = crm
        @uf = uf
        @prestador = prestador
        @senha = senha
 
       

        numero_crm_pj_input.set(@crm)
        sleep(1)
        uf_crm_pj_select.click.find(@uf).click
        sleep(1)
        continuar_pj_button.click
        prestador_pj_select.click.find(@prestador).click
        sleep(1)
        senha_pj_input.set(@senha)
        sleep(1)
        entrar_pj_button.click

    end
        
    #Metodos para realizar login como pessoa fisica  

    def realizar_login_pf(crm, uf, senha) 

        @crm = crm
        @uf = uf
        @senha = senha
      

        numero_crm_pf_input.set(@crm)
        sleep(1)
        uf_crm_pf_select.click.find(@uf).click
        sleep(1)
        continuar_pf_button.click
        senha_pf_input.set(@senha)
        sleep(1)
        entrar_pf_button.click

    end

    #Metodos para realizar login na area restrita   

    def realizar_login_restrito(usuario, senha) 

        @usuario = usuario
        @senha = senha

        usuario_restrito_input.set(@usuario)
        sleep(1)
        senha_restrito_input.set(@senha)
        sleep(1)
        acessar_restrito_button.click

    end

    #Metodo para realizar login para testar demais funcionalidades do sistema 
    def realizar_login (perfil_usuario)

        @perfil = perfil_usuario

        
        case @perfil

        when "pessoa fisica"
           
            escolher_perfil(@perfil)
            realizar_login_pf("41906", "#ufCrm > option:nth-child(19)", "123")

        when "pessoa juridica"

            visit "/"
            sleep(1)
            escolher_perfil(@perfil)
            realizar_login_pj("36172", "#ufCrmPJ > option:nth-child(19)", "'#prestador > option:nth-child(3)'", "cn&n77&9")

        when "area restrita"

            escolher_perfil(@perfil)
            sleep(1)
            realizar_login_restrito("ODANIELE", "123")

        else

            puts "Erro na selecao de perfil"

        end


    end






end