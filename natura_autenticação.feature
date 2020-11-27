#language: pt

Funcionalidade: Autenticação

    Contexto: Abrir login
        Dado que esteja na home
        Quando abrir Login
 
        Esquema do Cenário: Realizar Login
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibido o nome do usuário no header
 
            Exemplos:
                | email             | senha    |
                | test@teste        | 12345    | 
 
        Esquema do Cenário: Realizar Login Exception
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
               | email              | senha     | mensagem                 |
               | teste@testando     | 123456    | login ou senha incorreta | 

 
        Esquema do Cenário: Realizar Cadastro
            Quando realizar cadastro com "<email>" e "<senha>" e "<cpf>" e "<rg>"
            Então deverá ser exibido "<mensagem>"
 
            Exemplos:
                | email             | senha    | cpf       | rg        | mensagem           | 
                | test@teste        | 12345    | 292842157 | 152124565 | cadastro realizado |
 
        Esquema do Cenário: Realizar Cadastro Exception
            Quando realizar cadastro com "<email>" e "<senha>" e "<cpf>" e "<rg>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | email              | senha     | mensagem                                                     |
                | test@teste         | 12345     | Email ja cadastrado, verifique seus dados e tente novamente  |
                | teste@testando     | 123456    | Cadastro não pode ser realizado, verifique seus dados        |
                | cpf                | 292842157 | Cpf informado ja esta cadastrado                             |
                | rg                 | 152124565 | RG informado ja esta cadastrado                              | 