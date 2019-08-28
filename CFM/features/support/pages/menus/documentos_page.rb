class DocumentosPage < SitePrism::Page 


    element :certidao_aposentadoria_menu, "#declaracoes-e-certidoes > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1)"

  
    def emitir_certidao(certidao)

        @certidao = certidao

        case @certidao

        when "Certidão de Aposentadoria"

            certidao_aposentadoria_menu.click
        
        else 

            puts "Erro ao selecionar certidão"

        end

    end










end 