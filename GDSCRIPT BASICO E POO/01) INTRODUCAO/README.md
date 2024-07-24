# INTRODUÇÃO, INSTALAÇÃO E CONFIGURAÇÃO
## INTRODUÇÃO:
GDScript é a linguagem de programação oficial da Godot Engine, especialmente projetada para criar jogos 2D e 3D. Ela é uma linguagem dinâmica e de fácil aprendizado, com sintaxe inspirada em Python.

## POR QUE APRENDER GDSCRIPT?
* **Integração perfeita com a Godot:** GDScript é totalmente integrado à engine, permitindo um desenvolvimento rápido e eficiente.
* **Sintaxe simples e intuitiva:** Sua sintaxe clara facilita o aprendizado, mesmo para quem está começando a programar.
* **Tipo dinâmico:** Não é necessário declarar o tipo de variável antes de usá-la, o que agiliza o desenvolvimento.
* **Orientada a objetos:** Permite organizar o código em classes e objetos, facilitando a manutenção e reutilização de código.

## FUNDAMENTOS DO GDSCRIPT:
**Variáveis:**
* **Declaração:** `var minha_variavel = 10`
* **Tipos:** GDScript é dinâmico, mas os tipos mais comuns são: `int`, `float`, `String`, `bool` e `Vector2`.

**Operadores:**
* **Aritméticos:** `+`, `-`, `*`, `/`, `%`
* **Comparação:** `==`, `!=`, `<`, `>`, `<=`, `>=`
* **Lógicos:** `and`, `or`, `not`

**Estruturas de controle:**
* **Condicionais:** `if`, `elif`, `else`
* **Laços:** `for`, `while`

**Funções:**
* **Definição:**
  ```gdscript
  func minha_funcao(argumento1, argumento2):
      # Código da função
  ```
* **Retorno:** `return valor`

**Classes:**
* **Criação:**
  ```gdscript
  extends Node2D

  func _ready():
      pass
  ```
* **Atributos:** Variáveis dentro da classe.
* **Métodos:** Funções dentro da classe.

## DOWNLOAD E INSTALAÇÃO:
**1.1 Acessar o site oficial:**
* Visite o site da Godot Engine: [https://godotengine.org/](https://godotengine.org/)
* Na página inicial, procure pela seção de downloads.

**1.2 Escolher a versão:**
* Selecione a versão mais recente e estável da Godot. As versões 3 e 4 são as mais populares.

**1.3 Baixar o instalador:**
* Escolha a versão adequada para o seu sistema operacional (Windows, macOS ou Linux).
* Execute o instalador e siga as instruções na tela.

**1.4 Executar o editor:**
* Após a instalação, localize o atalho da Godot no seu computador e execute-o.

## CRIANDO SEU PRIMEIRO PROJETO:
* **Iniciar um novo projeto:** Ao abrir o Godot, você será apresentado a uma tela inicial. Clique em "Novo Projeto".
* **Configurar o projeto:**
    * **Nome:** Defina um nome para o seu projeto.
    * **Caminho:** Escolha o local onde o projeto será salvo.
    * **Motor:** Selecione a versão da Godot que você deseja usar (3 ou 4).
    * **Template:** Escolha um template inicial (2D, 3D ou outros).
* **Criar:** Clique em "Criar" para iniciar seu projeto.

## EXPLORANDO A INTERFACE DO GODOT:
* **Barra de menus:** Contém os menus principais para gerenciar o projeto, editar código, visualizar o jogo, etc.
* **Barra de ferramentas:** Oferece acesso rápido a ferramentas comuns, como salvar, executar, adicionar nós, etc.
* **Viewport:** A área onde você visualiza o seu jogo.
* **Inspector:** Mostra as propriedades do objeto selecionado no viewport.
* **Árvore de cena:** Organiza os nós (objetos) do seu jogo em uma hierarquia.
* **Script:** Editor de código para escrever o comportamento dos seus objetos.

## CRIANDO SEU PRIMEIRO SCRIPT:
* **Selecionar um nó:** Na árvore de cena, selecione o nó com o qual você deseja trabalhar (por exemplo, o nó principal da sua cena).
* **Criar um script:** No inspector, clique no campo "Script" e selecione "Novo".
* **Escrever o código:** Abra o editor de script e comece a escrever seu código em GDScript.

**Exemplo simples:**
```gdscript
extends Node2D

func _ready():
    print("Hello, world!")
```
* **`extends Node2D`:** Indica que este script herda da classe Node2D, que é a base para a maioria dos nós 2D.
* **`_ready()`:** Uma função especial que é chamada quando o nó está pronto para ser usado.

## EXECUTANDO O JOGO:
* **Executar:** Clique no botão "Reproduzir" na barra de ferramentas para executar o jogo.

