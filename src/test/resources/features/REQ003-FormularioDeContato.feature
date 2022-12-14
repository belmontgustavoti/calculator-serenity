# language: pt

@all @req003
Funcionalidade: REQ003 - Formulario de Contato

  @fb @smoke @regression
  Esquema do Cenario: Formulario de contato enviado com sucesso

    Dado que o usuário está na página inicial do sistema
    E deseje acessar o formulario de contato


    Quando informa os dados no formulário de contato
      | name                   | <Nome>             |
      | email                  | <Email>            |
      | typeMessage            | <TipoDeMensagem>   |
      | userAge                | <IdadeUsuario>     |
      | writeHereYourMessage   | <EscrevaMensagem>  |

    Então o sistema apresenta a mensagem de sucesso corretamente
      | messageSuccess | <MensagemSucesso> |

    Exemplos:
     | Nome                   | Email                   | TipoDeMensagem     | IdadeUsuario             | MensagemSucesso                                                                           | EscrevaMensagem |
     | Quebradores Anonimos   | quebradores@bing.com.br | Dúvida             | Menor que 18 anos        | Mensagem de DÚVIDA por usuário de idade MENOR QUE 18 ANOS foi enviada com sucesso!        | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Dúvida             | Entre 18 e 29 anos       | Mensagem de DÚVIDA por usuário de idade ENTRE 18 E 29 ANOS foi enviada com sucesso!       | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Dúvida             | Entre 30 e 64 anos       | Mensagem de DÚVIDA por usuário de idade ENTRE 30 E 64 ANOS foi enviada com sucesso!       | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Dúvida             | A partir de 65 anos      | Mensagem de DÚVIDA por usuário de idade A PARTIR DE 65 ANOS foi enviada com sucesso!      | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Sugestão           | Menor que 18 anos        | Mensagem de SUGESTÃO por usuário de idade MENOR QUE 18 ANOS foi enviada com sucesso!      | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Sugestão           | Entre 18 e 29 anos       | Mensagem de SUGESTÃO por usuário de idade ENTRE 18 E 29 ANOS foi enviada com sucesso!     | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Sugestão           | Entre 30 e 64 anos       | Mensagem de SUGESTÃO por usuário de idade ENTRE 30 E 64 ANOS foi enviada com sucesso!     | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Sugestão           | A partir de 65 anos      | Mensagem de SUGESTÃO por usuário de idade A PARTIR DE 65 ANOS foi enviada com sucesso!    | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Reclamação         | Menor que 18 anos        | Mensagem de RECLAMAÇÃO por usuário de idade MENOR QUE 18 ANOS foi enviada com sucesso!    | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Reclamação         | Entre 18 e 29 anos       | Mensagem de RECLAMAÇÃO por usuário de idade ENTRE 18 E 29 ANOS foi enviada com sucesso!   | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Reclamação         | Entre 30 e 64 anos       | Mensagem de RECLAMAÇÃO por usuário de idade ENTRE 30 E 64 ANOS foi enviada com sucesso!   | Lets find bugs! |
     | Quebradores Anonimos   | quebradores@bing.com.br | Reclamação         | A partir de 65 anos      | Mensagem de RECLAMAÇÃO por usuário de idade A PARTIR DE 65 ANOS foi enviada com sucesso!  | Lets find bugs! |

  @fe
  Esquema do Cenario: Formulario de contato enviado com erro

    Dado que o usuário está na página inicial do sistema
    E deseje acessar o formulario de contato


    Quando informa os dados no formulário de contato
      | name                   | <Nome>             |
      | email                  | <Email>            |
      | typeMessage            | <TipoDeMensagem>   |
      | userAge                | <IdadeUsuario>     |
      | writeHereYourMessage   | <EscrevaMensagem>  |

    Então o sistema apresenta a mensagem de erro ao enviar o formulário
      | messageError | <MensagemErro> |

    Exemplos:
      | Nome                   | Email                   | TipoDeMensagem     | IdadeUsuario             | MensagemErro                                                                           | EscrevaMensagem |
      |                        | quebradores@bing.com.br | Dúvida             | Menor que 18 anos        | Sua mensagem não pôde ser enviada no momento! Tente mais tarde.                        | Lets find bugs! |
      | Quebradores Anonimos   |                         | Dúvida             | Menor que 18 anos        | Sua mensagem não pôde ser enviada no momento! Tente mais tarde.                        | Lets find bugs! |
      | Quebradores Anonimos   | quebradores@bing.com.br |                    | Menor que 18 anos        | Sua mensagem não pôde ser enviada no momento! Tente mais tarde.                        | Lets find bugs! |
      | Quebradores Anonimos   | quebradores@bing.com.br | Dúvida             | Menor que 18 anos        | Sua mensagem não pôde ser enviada no momento! Tente mais tarde.                        |                 |