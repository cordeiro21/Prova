***Settings***
Documentation       Suite de testes de Cadastro de Usuários

Resource    ../resources/base.robot

***Test Cases***

Cadastro de Usuários

# Tela 1
    [tags]          
    Go To Login Page

    Login With                 Rafael Cordeiro  teste@teste.com  pwd12345678    
   
    Get Text                   css=table th    should be   Id

    Take Screenshot


    # Tela 2
Campo nome em branco
    [tags]          nome
    Go To Login Page

    Login With                 ${EMPTY}  teste@teste.com  pwd12345678 
   
    Form Error Should Be       O campo Nome é obrigatório.    
    
    Take Screenshot

# Tela 3
Campo email em branco
    [tags]          email
    Go To Login Page

    Login With                  Rafael Cordeiro  ${EMPTY}  pwd12345678     
   
    Form Error Should Be        O campo E-mail é obrigatório.

    Take Screenshot  

# Tela 4
Campo senha em branco
    [tags]          senha
    Go To Login Page

    Login With                  Rafael Cordeiro  teste@teste.com  ${EMPTY} 
   
    Form Error Should Be        O campo Senha é obrigatório.

    Take Screenshot 

# Tela 5
Campos nome, email e senha em branco
    [tags]          todos
    Go To Login Page

    Login With                  ${EMPTY}  ${EMPTY}  ${EMPTY} 
   
    Form Error Should Be        O campo Nome é obrigatório.
    Form Error Should Be        O campo E-mail é obrigatório.
    Form Error Should Be        O campo Senha é obrigatório.

    Take Screenshot 

Campo nome incompleto
    [tags]          incompleto
    Go To Login Page

    Login With                  Rafael  teste@teste.com  pwd12345678 
   
    Form Error Should Be        Por favor, insira um nome completo.

    Take Screenshot

Campo email inválido
    [tags]          email
    Go To Login Page

    Login With                  Rafael Cordeiro  teste.teste.com  pwd12345678 
   
    Form Error Should Be        Por favor, insira um e-mail válido.

    Take Screenshot    

Campo senha incompleto
    [tags]          email
    Go To Login Page

    Login With                  Rafael Cordeiro  teste@teste.com  pwd123 
   
    Form Error Should Be        A senha deve conter ao menos 8 caracteres.

    Take Screenshot   

Cadastro com sucesso    

    [tags]          completo
    Go To Login Page

    Login With                 Rafael Cordeiro  teste@teste.com  pwd12345678    
   
    Get Text                   css=table th    should be   Id

    Take Screenshot

Cadastro com sucesso 2    

    [tags]          completo2
    Go To Login Page

    Login With                 Rafael Cordeiro  teste@teste.com  pwd12345678
    Login With                 Lucas Ribeiro  lucas@teste.com  pwd98765432    
   
    Get Text                   css=table th    should be   Id

    Take Screenshot    

Cadastro com exclusão    

    [tags]          exclusão
    Go To Login Page

    Login With                 Rafael Cordeiro  teste@teste.com  pwd12345678
    Login With                 Lucas Ribeiro  lucas@teste.com  pwd98765432   

    Excluir 
   
    Get Text                   css=table th    should be   Id

    Take Screenshot        