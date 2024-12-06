*** Settings ***
Documentation    Essa suiite testa o login da toro
Resource          toro_resources.robot
Test Setup        Abrir o navegador 
Test Teardown     Fechar o navegador


*** Test Cases ***

Caso de teste - Login com credenciais válidas
    [Documentation]    Este teste verifica o login do usuário de forma valida
    ...
    [Tags]            Login_senha_invalida
    
    Dado que estou na plataforma da Toro e clico em fazer login 
    Quando insiro meu email de usuário válido 
    E insiro minha senha válida invalida 
    E clico no botão de entrar
    Então eu devo receber uma mensagem de senha invalida 


    

