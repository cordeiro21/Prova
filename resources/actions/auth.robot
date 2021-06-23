***Settings***
Documentation       Ações de autorização


***Keywords***

Go To Login Page

    New Browser     chromium    true
    New Page        http://prova.stefanini-jgr.com.br/teste/qa/

Login With
    [Arguments]     ${name}     ${email}        ${pass}

    Fill Text       css=input[name=name]       ${name}
    Fill Text       css=input[name=email]      ${email}
    Fill Text       css=input[name=password]   ${pass}
    Click           css=.register-form button 

Form Error Should Be
    [Arguments]     ${expect_text}

    Wait for Elements State        css=.register-form .error >> text=${expect_text}

Excluir

    Click           //*[@id="removeUser1"]          
    # text=removeUser1
    #




