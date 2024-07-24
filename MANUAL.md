# MANUAL
## 1. DOWNLOAD E INSTALAÇÃO
**1.1 Acessar o site oficial:**
* Visite [https://godotengine.org/](https://godotengine.org/)
* Encontre a seção de downloads na página inicial.

**1.2 Escolher a versão:**
* Selecione a versão mais recente e estável (3 ou 4).

**1.3 Baixar o instalador:**
* Escolha a versão adequada para o seu sistema operacional (Windows, macOS ou Linux).
* Execute o instalador e siga as instruções.

**1.4 Executar o editor:**
* Após a instalação, localize o atalho da Godot e execute-o.

## 2. CRIANDO SEU PRIMEIRO PROJETO
* **Iniciar um novo projeto:** Abra o Godot e clique em "Novo Projeto".
* **Configurar o projeto:**
    * **Nome:** Defina um nome para o projeto.
    * **Caminho:** Escolha o local de salvamento.
    * **Motor:** Selecione a versão da Godot (3 ou 4).
    * **Template:** Escolha um template (2D, 3D, etc.).
* **Criar:** Clique em "Criar" para iniciar o projeto.

## 3. EXPLORANDO A INTERFACE DO GODOT
* **Barra de menus:** Menus principais para gerenciar o projeto e editar código.
* **Barra de ferramentas:** Acesso rápido a ferramentas como salvar e executar.
* **Viewport:** Área para visualizar o jogo.
* **Inspector:** Mostra propriedades do objeto selecionado.
* **Árvore de cena:** Organiza os nós do jogo em hierarquia.
* **Script:** Editor de código para escrever comportamentos dos objetos.

## 4. CRIANDO SEU PRIMEIRO SCRIPT
* **Selecionar um nó:** Escolha o nó desejado na árvore de cena.
* **Criar um script:** No inspector, clique em "Script" e selecione "Novo".
* **Escrever o código:** No editor de script, escreva seu código em GDScript.

**Exemplo simples:**
```gdscript
extends Node2D

func _ready():
    print("Hello, world!")
```
* **`extends Node2D`:** Herda da classe Node2D para nós 2D.
* **`_ready()`:** Função chamada quando o nó está pronto.

## 5. EXECUTANDO O JOGO
* **Executar:** Clique no botão "Reproduzir" na barra de ferramentas.

