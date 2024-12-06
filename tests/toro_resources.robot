*** Settings ***
Library    SeleniumLibrary
Resource   credenciais.robot

*** Variables ***
${URL}                   https://www.toroinvestimentos.com.br/
${LOGIN_ABA}             https://app.toroinvestimentos.com.br/entrar
${fazer_login}           //a[@class='styles__LoginContainer-sc-e0073d34-0 iLoNZb login-button'][contains(.,'Fazer login')]
${MENSAGEM_ERRO}         //p[contains(.,'Dados incorretos. Digite novamente.')]

*** Keywords ***

Abrir o navegador
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Wait Until Page Contains    Fazer login

Fechar o navegador
    Close Browser
    
Dado que estou na plataforma da Toro e clico em fazer login 
    Click Element    ${fazer_login}
    Switch Window    url=${LOGIN_ABA}

Quando insiro meu email de usuário válido
    input Text    css=input[type=text]       ${email}

E insiro minha senha válida invalida  
    input Text    css=input[type=password]    ${senha}
    
E clico no botão de entrar
    Click Button    xpath=//button[@type='submit'] 
    
Então eu devo receber uma mensagem de senha invalida
    Wait Until Element Is Visible    ${MENSAGEM_ERRO} 



