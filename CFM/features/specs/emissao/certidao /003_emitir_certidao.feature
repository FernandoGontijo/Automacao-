#language: pt

@emitir_certidao


Funcionalidade: Emitir certidao

Contexto:
Dado que acesso o Portal CFM


    @certidao_aposentadoria

    Cenario: Emitir certidao de aposentadoria como pessoa fisica

        Quando eu realizo login como "pessoa fisica"
        E clico em "Declarações e Certidões" e seleciono a opcao "Certidão de Aposentadoria" 
        Entao o sistema abre o "Visualizador" contendo a Certidao de Aposentadoria.
        

    @certidao_eleitoral

    Cenario: Emitir certidao eleitoral como pessoa fisica

        Quando eu realizo login como "pessoa fisica"
        E clico em "Declarações e Certidões" e seleciono a opcao "Certidão Eleitoral" 
        Entao o sistema abre o "Visualizador" contendo a Certidao de Aposentadoria.
        

    @certidao_especialidade

    Cenario: Emitir certidao de responsabilidade tecnica para especialidade como pessoa juridica

        Quando eu realizo login como "pessoa juridica"
        E clico em "Declarações e Certidões" e seleciono a opcao "Certidão de Responsabilidade Técninca para Especialidade" 
        Entao o sistema abre o "Visualizador" contendo a Certidao de Responsabilidade Técninca para Especialidade.
        

    @certidao_servico

    Cenario: Emitir certidao de responsabilidade tecnica para servico como pessoa juridica

        Quando eu realizo login como "pessoa juridica"
        E clico em "Declarações e Certidões" e seleciono a opcao "Certidão de Responsabilidade Técninca para Serviço" 
        Entao o sistema abre o "Visualizador" contendo a Certidao de Aposentadoria.
        


    @certidao_regularidade_de_inscricao

    Cenario: Emitir certificado de regularidade de inscricao como pessoa juridica

        Quando eu realizo login como "pessoa juridica"
        E clico em "Declarações e Certidões" e seleciono a opcao "Certificado  de Regularidade de inscrição" 
        Entao o sistema abre o "Visualizador" contendo a Certidão de Regularidade de inscrição
        


