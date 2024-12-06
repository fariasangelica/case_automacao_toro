# Automação de Login - Plataforma Toro
Este projeto foi desenvolvido para automatizar o processo de login na plataforma da [Toro Investimentos](https://www.toroinvestimentos.com.br/).

<img width="500" alt="app sorteio - git" src="https://github.com/user-attachments/assets/4e94c3d6-396d-46a9-8c27-9a674477cd02">

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
- pip install robotframework
- pip install robotframework-seleniumlibrary

### Informações uteis de comando
robot -d .log toro_teste.robot para rodar o teste e manter todos os logs organizados em um pasta


## Estrutura do Projeto

- **CASE_AUTOMACAO_TORO**: Organização de todos os arquivos e subpastas relacionadas ao projeto.

  - **tests**: Esta pasta é dedicada aos testes automatizados. Dentro dela, eu mantenho os arquivos de teste e outras subpastas relevantes.

    - **.logs**: Subpasta destinada a armazenar os logs gerados durante a execução dos testes. Isso é útil para depuração e análise de resultados.

    - **credenciais.robot**: Arquivo de variáveis que armazena suas credenciais de login, como email e senha. Isso Aqui eu mantenho os dados sensíveis separados do código principal.

    - **toro_resource.robot**: Arquivo de recursos que contém definições de keywords e variáveis reutilizáveis. Este arquivo é importado pelos arquivos de teste para utilizar as definições centralizadas.

    - **toro_teste.robot**: Arquivo de testes que contém os casos de teste específicos. O arquivo importa os recursos e utiliza as keywords definidas no `toro_resource.robot` para executar os testes.

  - **LICENSE**: Arquivo que define os termos e condições de uso do seu projeto. 

  - **README.md**: Arquivo de documentação que fornece uma visão geral do seu projeto, instruções de instalação, uso, e outros detalhes importantes.



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
>
## Estratégias de Testes
> Heuristica ALTER FACE do Júlio de Lima.
> 
> Abordagem "Don't Reapeat Yourself" (DRY).



