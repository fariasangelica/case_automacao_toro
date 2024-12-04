# Automação de Login - Plataforma Toro
Este projeto foi desenvolvido para automatizar o processo de login na plataforma da [Toro Investimentos](https://www.toroinvestimentos.com.br/).

![image](https://github.com/user-attachments/assets/4e94c3d6-396d-46a9-8c27-9a674477cd02)

## Tecnologias Utilizadas

- **Linguagem**: Python - 3.13.1
- **Framework de Automação**: Robot Framework - 7.1.1
- **Biblioteca de Automação Web**: SeleniumLibrary
- **IDE**: Visual Studio Code (VSCode)

## Requisitos

Certifique-se de ter os seguintes softwares instalados no seu ambiente de desenvolvimento:

1. [Python](https://www.python.org/downloads/)
2. [Robot Framework](https://robotframework.org/)
3. [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
4. [Google Chrome](https://www.google.com/intl/pt-BR/chrome/) (ou outro navegador de sua preferência)
5. [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/downloads) (se estiver utilizando o Google Chrome)

### Instalação de Dependências

Execute os seguintes comandos para instalar o Robot Framework e a SeleniumLibrary:

bash
pip install robotframework
pip install robotframework-seleniumlibrary


## Estrutura do Projeto
tests/login_tests.robot: Arquivo contendo os cenários de teste automatizados.

resources/keywords.robot: Arquivo contendo keywords reutilizáveis.

resources/variables.robot: Arquivo contendo variáveis utilizadas nos testes.

README.md: Documentação do projeto.

.gitignore: Arquivo para ignorar arquivos desnecessários no repositório.


## Levantamento de cenários de testes criticos para o login do usuário

Cenários positivos:

| ID  | Cenário                              | Descrição                                                                                  | Criticidade |  Observações                                                   |
|-----|--------------------------------------|--------------------------------------------------------------------------------------------|-------------|----------------------------------------------------------------|
| 1   | Login com credenciais válidas        | Testa o login com um nome de usuário e senha válidos.                                      | Crítico     | Deve redirecionar para a página de dashboard após o login.    |

 Cenários negativos:

| ID  | Cenário                              | Descrição                                                                                  | Criticidade | Observações                                                   |
|-----|--------------------------------------|--------------------------------------------------------------------------------------------|-------------|----------------------------------------------------------------|
| 2   | Login com senha inválida             | Testa o login com um nome de usuário válido e uma senha inválida.                          | Crítico     | Deve exibir a mensagem de erro "Senha incorreta".             |
| 3   | Login com nome de usuário inválido   | Testa o login com um nome de usuário inválido e uma senha válida.                          | Crítico     | Deve exibir a mensagem de erro "Usuário não encontrado".      |
| 4   | Login sem preencher credenciais      | Testa o login sem preencher o nome de usuário e a senha.                                   | Crítico     | Deve exibir a mensagem de erro "Preencha os campos obrigatórios". |
| 5   | Login com conta inativa              | Testa o login com um nome de usuário válido e uma senha válida, mas com a conta intativa   | Crítico     | Deve exibir a mensagem de erro "Conta inativa. Verifique seu e-mail para ativar a conta". |

### Detalhamento desses cenários:
Cenário 1: Login com credenciais válidas
> Objetivo: Verificar se um usuário pode acessar sua conta utilizando credenciais válidas.
> 
> Resultado Esperado: Redirecionamento bem-sucedido para a página de dashboard.
>
Cenário 2: Login com senha inválida
> Objetivo: Garantir que o sistema informa corretamente os usuários quando uma senha incorreta é inserida.
> 
> Resultado Esperado: Mensagem de erro "Senha incorreta".
>
Cenário 3: Login com nome de usuário inválido
> Objetivo: Verificar a resposta do sistema quando um nome de usuário inválido é utilizado.
> 
> Resultado Esperado: Mensagem de erro "Usuário não encontrado".
>
Cenário 4: Login sem preencher credenciais
> Objetivo: Testar a validação do formulário de login para campos obrigatórios.
> 
> Resultado Esperado: Mensagem de erro "Preencha os campos obrigatórios".
>
Cenário 5: Login com conta inativa
> Objetivo: Testar a validação para contas inativas.
> 
> Resultado Esperado: Deve exibir a mensagem de erro "Conta inativa. Verifique seu e-mail para ativar a conta".

### Outros possiveis cenários de testes criticos que seria bom nos atentarmos:
> 1 - Login com sessão expirada.
> 
> Impacto: Inatividade após um período de inatividade por motivos de segurança.
>
> 2 - Login em múltiplos dispositivos.
> 
> Impacto: O sistema lida com tentativas em diferentes logins. Além disso, o sistema deve gerenciar isso de forma segura.


