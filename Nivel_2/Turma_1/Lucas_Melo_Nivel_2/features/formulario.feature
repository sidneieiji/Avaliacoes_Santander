#encoding: utf-8
#language: pt

  Funcionalidade: Preencher Formulario
    Eu como usuário
    Quero preencher o fomulário star wars com dados fakes
    Para validar o seu funcionamento

    @testpositivo @testnegativo
    Cenário: Acesso ao Formulario
      Dado que eu acesso o formulario
      Quando eu tocar no botão Next
      Então será exibido o questionário Star Wars

    @testpositivo
    Cenário: Preenchimento Formulario
        Dado que eu estou no questionário Star Wars
        Quando eu preencho o formulario com dados fakes
        E clicar no botão Submit
        Então será exibida a mensagem uma mensagem de sucesso

    @testnegativo
    Cenário: Envio do formulario sem preenchimento dos campos
      Dado que eu estou no questionário Star Wars
      Quando eu clico no botão Submite sem o preenchimento dos campos
      Então não deverá ser exibida uma mensagem de sucesso
