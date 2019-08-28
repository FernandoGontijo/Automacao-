class MenuPage < SitePrism::Page 


    #Mapeando os menus disponiveis para pessoa fisica

    element :painel_pendencias_menu, "#painel-de-pendencias"
    element :dados_gerais_menu, "fli.panel:nth-child(4) > a:nth-child(1)"
    element :inscricoes_menu, "li.panel:nth-child(3) > a:nth-child(1)"
    element :declaracoes_certidoes_menu, "li.panel:nth-child(4) > a:nth-child(1)"
    element :carteira_profissional_menu, "#carteira-profissional-2a-via"
    element :celula_de_identidade_menu, "#cedula-de-identidade-medica-2a-via"
    element :documentos_roubados_menu, "#documentos-roubados"
    element :atividades_profissionais_menu, "#atividades-profissionais"
    element :especialidade_menu, "li.panel:nth-child(9) > a:nth-child(1)"
    element :codigo_postagem_menu, "#geracao-de-codigo-de-postagem"
    element :anuidade_taxas_menu, "li.panel:nth-child(11) > a:nth-child(1)"
    
    element :certiao_div, ".textLayer"

    def selecionar_menu(menu)

        @menu = menu

        case @menu

            when "Painel de Pendências"

                painel_pendencias_menu.click

            when "Dados Gerais"

                dados_gerais_menu.click

            when "Inscrições"

                inscricoes_menu.click
            
            when "Declarações e Certidões"

                declaracoes_certidoes_menu.click
            
            when "Carteira Profissional-2a Via"

                carteira_profissional_menu.click

            when "Cédula de Identidade Médica-2a Via"

                celula_de_identidade_menu.click

            when "Documentos Roubados"

                documentos_roubados_menu.click
            
            when "Atividades Profissionais"

                atividades_profissionais_menu.click

            when "Especialidade / Área de Atuação"

                especialidade_menu.click

            when "Geração de Código de Postagem"

                codigo_postagem_menu.click

            when "Anuidade e Taxas"

                anuidade_taxas_menu.click
            
            else

                puts "Erro ao selecionar menu"

        end

    end




end 