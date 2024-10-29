# Instalar e configurar um projeto básico com o Robot Framework:

---

### Passo 1: Verificar e Remover Instalação Anterior do Python (se houver)

1. **Verificar Instalação Existente**:
    - Abra o **VS Code** e abra o **terminal interno** (use `Ctrl + '` no Windows)
    - Digite o seguinte comando para verificar se o Python está instalado:
        
        ```bash
        python --version
        ```
        
    - Caso uma versão do Python apareça, você pode removê-la pelo **Painel de Controle**.
2. **Baixar e Instalar Python**:
    - Acesse [python.org/downloads](https://www.python.org/downloads/) e baixe a versão mais recente do Python.
    - Durante a instalação:
        - Marque **Add Python to PATH** para garantir que o Python seja adicionado ao PATH do sistema.
        - Selecione **Install Now**.
        
        ![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/04764f98-e625-4d15-9662-358e87027170/4091dd94-485f-47a0-b341-bf057f446663/image.png)
        
3. **Confirmar Instalação do Python**:
    - No terminal do **VS Code**, digite:
        
        ```bash
        python --version
        ```
        
    - A versão do Python deve aparecer, confirmando que foi instalado corretamente.
    
    ![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/04764f98-e625-4d15-9662-358e87027170/9b67e9e4-bd44-4747-b064-ab5f1f11c3fb/image.png)
    

---

### Passo 2: Instalar o Robot Framework e a Biblioteca Browser

1. **Instalar Robot Framework**:
    - No terminal do **VS Code**, digite:
        
        ```bash
        pip install robotframework
        ```
        
2. **Instalar a Biblioteca Browser**:
    - Digite no terminal:
        
        ```bash
        pip install robotframework-browser
        ```
        
    - Instale também os navegadores compatíveis com a biblioteca Browser:
        
        ```bash
        rfbrowser init
        ```
        

---

### Passo 3: Configurar o Visual Studio Code para Robot Framework

1. **Instalar Extensões no VS Code**:
    - No VS Code, acesse a seção de **Extensões** (ícone de quadrado ou use `Ctrl+Shift+X`).
    - Procure e instale:
        - **RobotCode - Robot Framework Support**: oferece suporte a autocompletar e realce de sintaxe.
        
        Daniel Biehl
        [robotcode.io](http://robotcode.io/)
        
        ![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/04764f98-e625-4d15-9662-358e87027170/b873f4b9-22a4-40f1-a0ad-565795b32cdd/image.png)
        

---

### Passo 4: Criar um Novo Projeto com o Robot Framework

1. **Criar uma Pasta para o Projeto**:
    - No VS Code, abra uma nova pasta para o projeto, por exemplo, `meu_projeto_robot`.
2. **Criar o Arquivo de Teste `.robot`**:
    - Dentro da pasta do projeto, crie um arquivo chamado `primeiro_teste.robot`.
3. **Escrever um Teste Usando a Biblioteca Browser**:
    - Abra `primeiro_teste.robot` e insira o seguinte conteúdo para um teste básico:
    
    ```
    *** Settings ***
    Library    Browser    
    
    *** Variables ***
    ${URL}    https://www.mercadolivre.com.br
    
    *** Test Cases ***
    Visita a página inicial
      New Browser    browser=chromium    headless=False
      New Page    ${URL}
      Take Screenshot    fullPage=True
      
      Fill Text    css=input[placeholder="Buscar produtos, marcas e muito mais…"]    Mouse gamer
      Click    css=button.nav-search-btn[type=submit]
      Click    css=.ui-search-layout__item >> nth=0
      Sleep    1
      Click    css=.ui-pdp-gallery__figure >> nth=0
      Click    css=button[title="Next (arrow right)"]
      Click    css=button[title="Next (arrow right)"]
      Click    css=button[title="Next (arrow right)"]
      Sleep    5
    
    ```
    

---

### Passo 5: Executar o Teste no VS Code

1. **Executar o Teste**:
    - No terminal do VS Code, vá para a pasta do projeto se necessário:
        
        ```bash
        cd caminho/para/meu_projeto_robot
        
        ```
        
    - Execute o teste com:
        
        ```bash
        robot primeiro_teste.robot
        
        ```
        

---

### Passo 6: Analisar os Resultados

Após a execução, o Robot Framework cria arquivos de relatório e log (`report.html` e `log.html`) na pasta do projeto. Abra esses arquivos em um navegador para ver os detalhes dos testes.

![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/04764f98-e625-4d15-9662-358e87027170/87ce2aaa-4c17-4dfe-b43f-63a6c57eeaf2/image.png)

Pronto! Agora você tem um projeto básico com o Robot Framework.