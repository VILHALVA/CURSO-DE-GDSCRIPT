# SINTAXE DA LINGUAGEM:
## 0) FUNDAMENTOS:
### OPERADORES ARITMÉTICOS:
Os operadores aritméticos são usados para realizar cálculos matemáticos.

```gdscript
# Declaração de variáveis
var numero_inteiro = 10
var numero_real = 3.14
var resultado

# Operações aritméticas
resultado = numero_inteiro + numero_real  # Adição
print(resultado)

resultado = numero_inteiro - numero_real  # Subtração
print(resultado)

resultado = numero_inteiro * numero_real  # Multiplicação
print(resultado)

resultado = numero_inteiro / numero_real  # Divisão
print(resultado)

resultado = numero_inteiro % 2  # Módulo (resto da divisão)
print(resultado)
```

### OPERADORES RELACIONAIS:
Os operadores relacionais são usados para comparar valores.

```gdscript
var a = 5
var b = 10

# Comparações
if a == b:  # Igualdade
    print("a é igual a b")
elif a != b:  # Diferente
    print("a é diferente de b")
if a < b:  # Menor que
    print("a é menor que b")
if a > b:  # Maior que
    print("a é maior que b")
if a <= b:  # Menor ou igual
    print("a é menor ou igual a b")
if a >= b:  # Maior ou igual
    print("a é maior ou igual a b")
```

### OPERADORES LÓGICOS:
Os operadores lógicos são usados para combinar expressões booleanas.

```gdscript
var x = True
var y = False

# Operações lógicas
if x and y:  # E
    print("x e y são verdadeiros")
elif x or y:  # Ou
    print("x ou y é verdadeiro")
else:
    print("x e y são falsos")

# Negação
var not_x = not x
print(not_x)
```

### TIPOS PRIMITIVOS:
O GDScript suporta diversos tipos de dados, incluindo:
* **int:** Números inteiros (ex: 10, -5)
* **float:** Números de ponto flutuante (ex: 3.14, -0.5)
* **bool:** Valores booleanos (True ou False)
* **String:** Cadeias de caracteres (ex: "Olá, mundo!")

**Exemplo com diferentes tipos:**

```gdscript
var nome = "Alice"
var idade = 30
var altura = 1.65

print("Meu nome é", nome, "tenho", idade, "anos e minha altura é", altura, "metros.")
```

**Observações:**
* O GDScript é uma linguagem de tipagem dinâmica, o que significa que você não precisa declarar explicitamente o tipo de uma variável. O tipo é inferido automaticamente pelo interpretador.
* Os operadores aritméticos podem ser usados com diferentes tipos numéricos, mas o resultado será do tipo mais preciso (por exemplo, um inteiro e um float resultarão em um float).
* Os operadores relacionais comparam valores e retornam um valor booleano (True ou False).
* Os operadores lógicos combinam expressões booleanas e também retornam um valor booleano.

## 1) VARIAVEIS SIMPLES:
### VARIÁVEIS SIMPLES:
Em GDScript, as variáveis são usadas para armazenar dados. Você não precisa declarar o tipo de uma variável antes de usá-la, pois o GDScript inferirá o tipo automaticamente.

**Exemplo:**

```gdscript
var nome = "João"  # String
var idade = 30      # Inteiro
var altura = 1.75   # Float (número de ponto flutuante)
var esta_chovendo = false  # Booleano
```

### INPUT DO USUÁRIO:
Para obter informações do usuário, podemos utilizar diálogos ou a função `input()`.

**Utilizando um Diálogo:**

```gdscript
var nome = get_node("Dialog").get_string()
print("Olá,", nome + "!")
```
* **get_node("Dialog")**: Obtém uma referência ao nó de diálogo da cena.
* **get_string()**: Retorna a string inserida pelo usuário no diálogo.

**Utilizando a função input():**

```gdscript
var nome = input("Digite seu nome: ")
print("Olá,", nome + "!")
```
* **input("mensagem")**: Exibe uma mensagem na console e aguarda a entrada do usuário.

### EXEMPLO COMPLETO:
```gdscript
func _ready():
    var nome = input("Qual é o seu nome? ")
    var idade = input("Qual é a sua idade? ")
    var altura = input("Qual é a sua altura? ")

    print("Olá,", nome + "!")
    print("Você tem", idade, "anos e", altura, "metros de altura.")
```

### CONVERTENDO TIPOS:
Às vezes, você precisará converter um tipo de dado para outro. Por exemplo, se você obtiver a idade como uma string, precisará convertê-la para um inteiro antes de realizar cálculos.

```gdscript
var idade_como_string = "30"
var idade = int(idade_como_string)
```

**Observações:**

* **Tipagem Dinâmica:** O GDScript é uma linguagem de tipagem dinâmica, o que significa que o tipo de uma variável pode mudar durante a execução do programa.
* **Conversão de Tipos:** Use as funções `int()`, `float()`, `str()` para converter entre tipos numéricos e strings.
* **Concatenação de Strings:** Use o operador `+` para concatenar strings.
* **Interpolação de Strings:** Para criar strings mais complexas, você pode usar interpolação de strings: `print(f"Olá, {nome}! Você tem {idade} anos.")`

## 2) ESTRUTURA CONDICIONAL:
Estruturas condicionais permitem que seu código tome decisões com base em diferentes condições. Em GDScript, as principais estruturas são `if-else` e `match`.

### ESTRUTURA IF-ELSE:
A estrutura `if-else` executa um bloco de código se uma condição for verdadeira, e outro bloco (opcional) se a condição for falsa.

```gdscript
var idade = 18

if idade >= 18:
    print("Você é maior de idade.")
else:
    print("Você é menor de idade.")
```

**Exemplo mais complexo com `elif`:**

```gdscript
var nota = 7

if nota >= 9:
    print("Aprovado com distinção!")
elif nota >= 7:
    print("Aprovado.")
else:
    print("Reprovado.")
```

### ESTRUTURA MATCH:
A estrutura `match` é uma alternativa mais concisa e poderosa ao `switch` em outras linguagens. Ela permite comparar um valor com múltiplas possibilidades.

```gdscript
var fruta = "maçã"

match fruta:
    "maçã":
        print("Você gosta de maçãs!")
    "banana":
        print("Bananas são deliciosas.")
    _:
        print("Eu não conheço essa fruta.")
```

**O underscore (_) é um padrão que captura qualquer valor não correspondente aos casos anteriores.**

**Exemplo com intervalos:**

```gdscript
var idade = 25

match idade:
    0..12:
        print("Criança")
    13..17:
        print("Adolescente")
    18..65:
        print("Adulto")
    _:
        print("Idoso")
```

### EXEMPLO PRÁTICO: JOGO SIMPLES:
```gdscript
func _process(delta):
    var input = Input.is_action_just_pressed("ui_up")

    match input:
        true:
            print("A tecla para cima foi pressionada.")
        false:
            print("Nenhuma tecla para cima pressionada.")
```

**Neste exemplo, verificamos se a tecla para cima foi pressionada e executamos uma ação diferente dependendo do resultado.**

### QUANDO USAR `IF-ELSE` E QUANDO USAR `MATCH`?
* **`if-else`:** Ideal para condições simples e quando você precisa verificar várias condições aninhadas.
* **`match`:** Ideal para comparar um valor com múltiplas possibilidades de forma concisa e elegante. É especialmente útil quando você tem muitos casos possíveis.

## 3) ESTRUTURA DE REPETIÇÃO:
Estruturas de repetição permitem que um bloco de código seja executado repetidamente enquanto uma determinada condição for verdadeira. Em GDScript, as principais estruturas de repetição são `for` e `while`.

### ESTRUTURA FOR:
O loop `for` é usado quando você sabe de antemão quantas vezes deseja repetir um bloco de código. É frequentemente utilizado para iterar sobre listas ou dicionários.

```gdscript
# Iterando sobre uma lista
var frutas = ["maçã", "banana", "laranja"]
for fruta in frutas:
    print(fruta)

# Iterando sobre um intervalo de números
for i in range(5):
    print(i)
```

### ESTRUTURA WHILE:
O loop `while` continua a executar um bloco de código enquanto uma condição específica for verdadeira.

```gdscript
var contador = 0
while contador < 5:
    print(contador)
    contador += 1
```

**Observação:** É importante garantir que a condição do `while` mude dentro do loop, caso contrário, você pode entrar em um loop infinito.

### ESTRUTURA DO-WHILE:
O GDScript não possui uma estrutura `do-while` nativa. No entanto, você pode simular seu comportamento usando um `while` com uma condição sempre verdadeira e um `break` condicional:

```gdscript
var continuar = true
while true:
    print("Executando o loop")
    # ...
    if alguma_condicao:
        break
```

**Por que não usar `do-while` em GDScript?**

* **Preferência por `while`:** A maioria dos programadores GDScript prefere utilizar `while` com um `break` condicional, pois é mais expressivo e permite um controle mais preciso sobre o fluxo do programa.
* **Simplicidade:** A estrutura `while` é mais simples e fácil de entender para iniciantes.

### QUANDO USAR CADA ESTRUTURA?
* **`for`:** Quando você sabe o número exato de iterações ou quando deseja iterar sobre uma sequência.
* **`while`:** Quando você precisa repetir um bloco de código até que uma determinada condição seja falsa.

**Exemplo prático: Jogo simples**

```gdscript
var pontuacao = 0
while pontuacao < 10:
    print("Sua pontuação é:", pontuacao)
    # Simular um evento do jogo que aumenta a pontuação
    pontuacao += 1
    
print("Parabéns! Você alcançou 10 pontos!")
```

## 4) VARIAVEIS COMPOSTAS:
**Variáveis compostas** permitem armazenar múltiplos valores em uma única variável, organizando dados de forma mais eficiente e estruturada. As principais estruturas de dados compostas em GDScript são:

### LISTAS:
* **Criação:**
  ```gdscript
  var minha_lista = [1, 2, 3, "quatro"]
  ```
* **Acesso a elementos:**
  ```gdscript
  print(minha_lista[0])  # Imprime o primeiro elemento (1)
  ```
* **Modificação:**
  ```gdscript
  minha_lista[2] = "novo valor"
  ```
* **Métodos:**
  * `append()`: Adiciona um elemento ao final da lista.
  * `insert()`: Insere um elemento em uma posição específica.
  * `remove()`: Remove um elemento.
  * `pop()`: Remove e retorna o último elemento.
  * `clear()`: Remove todos os elementos.

### DICIONARIOS:
* **Criação:**
  ```gdscript
  var meu_dicionario = {"nome": "João", "idade": 30}
  ```
* **Acesso a valores:**
  ```gdscript
  print(meu_dicionario["nome"])  # Imprime "João"
  ```
* **Modificação:**
  ```gdscript
  meu_dicionario["idade"] = 31
  ```
* **Métodos:**
  * `has()`: Verifica se uma chave existe.
  * `keys()`: Retorna uma lista com todas as chaves.
  * `values()`: Retorna uma lista com todos os valores.

### ARRAYS:
* **Criação:**
  ```gdscript
  var meu_array = Array.new()
  meu_array.resize(5)
  ```
* **Acesso e modificação:** Similar a listas.

**Exemplo prático: Criando um inventário de itens em um jogo**

```gdscript
var inventario = {}
inventario["espada"] = 5
inventario["poção"] = 10

func usar_item(item):
    if inventario.has(item):
        inventario[item] -= 1
        print("Você usou um", item)
    else:
        print("Você não tem esse item.")
```

**Quando usar cada estrutura?**

* **Listas:** Para armazenar sequências de elementos em uma ordem específica.
* **Dicionários:** Para armazenar pares chave-valor, onde cada chave é única.
* **Arrays:** Para armazenar um número fixo de elementos de um mesmo tipo, geralmente usados para representar dados numéricos.

## 5) FUNÇÕES:
**Funções** são blocos de código reutilizáveis que realizam uma tarefa específica. Elas ajudam a organizar o código, torná-lo mais legível e evitar a repetição de código.

**Sintaxe:**

```gdscript
func nome_da_funcao(parametro1, parametro2, ...):
    # Corpo da função
    pass
```

* **`func`:** Palavra-chave para definir uma função.
* **`nome_da_funcao`:** Nome da função.
* **`parâmetros`:** Valores que são passados para a função.
* **`corpo da função`:** Bloco de código que executa a tarefa da função.
* **`pass`:** Palavra-chave usada como marcador de posição quando o corpo da função está vazio.

**Exemplo:**

```gdscript
func saudacao(nome):
    print("Olá,", nome + "!")

# Chamando a função
saudacao("João")
```

**Retornando valores:**

```gdscript
func soma(a, b):
    var resultado = a + b
    return resultado
```

**Parâmetros por padrão:**

```gdscript
func saudacao(nome="Anônimo"):
    print("Olá,", nome + "!")
```

**Passagem por referência:**

Em GDScript, os argumentos são passados por valor por padrão. Isso significa que uma cópia do valor é passada para a função. No entanto, você pode simular a passagem por referência passando objetos.

**Funções anônimas (lambdas):**

```gdscript
var minha_funcao = func(x):
    return x * 2
```

**Funções como tipos de dados:**

Funções podem ser atribuídas a variáveis e passadas como argumentos para outras funções.

**Exemplo mais complexo: Calculando a área de um retângulo**

```gdscript
func calcular_area(base, altura):
    var area = base * altura
    return area

var largura = 10
var comprimento = 5
var resultado = calcular_area(largura, comprimento)
print("A área do retângulo é:", resultado)
```

**Quando usar funções:**

* **Reutilizar código:** Evite repetir o mesmo código em diferentes partes do seu script.
* **Organizar o código:** Divida seu código em funções menores e mais específicas.
* **Abstrair complexidade:** Esconda a implementação de detalhes complexos dentro de funções.
* **Modularizar o código:** Crie módulos independentes que podem ser reutilizados em outros projetos.

## 6) CLASS POO:
A Programação Orientada a Objetos (POO) é um paradigma de programação que organiza o código em torno de objetos que possuem propriedades (atributos) e comportamentos (métodos). Em GDScript, os objetos são instâncias de classes.

**Os quatro pilares da POO são:**

### 1. ABSTRAÇÃO:
* **Conceito:** Simplificar um sistema, focando em suas características essenciais e ignorando detalhes de implementação.
* **Exemplo:**
  ```gdscript
  class Animal:
      var nome = ""
      var idade = 0

      func fazer_barulho():
          pass  # Cada animal faz um barulho diferente
  ```
  A classe `Animal` representa a ideia geral de um animal, sem se preocupar com detalhes específicos de cada espécie.

### 2. ENCAPSULAMENTO:
* **Conceito:** Ocultar os detalhes internos de um objeto, expondo apenas o necessário para interagir com ele.
* **Exemplo:**
  ```gdscript
  class ContaBancaria:
      var _saldo = 0  # Atributo privado

      func depositar(valor):
          self._saldo += valor

      func sacar(valor):
          if self._saldo >= valor:
              self._saldo -= valor
          else:
              print("Saldo insuficiente")
  ```
  O saldo da conta é um atributo privado, acessível apenas através dos métodos `depositar` e `sacar`.

### 3. HERANÇA:
* **Conceito:** Criar novas classes (subclasses) a partir de classes existentes (superclasses), herdando seus atributos e métodos.
* **Exemplo:**
  ```gdscript
  class Cachorro extends Animal:
      func fazer_barulho():
          print("Au au!")

  class Gato extends Animal:
      func fazer_barulho():
          print("Miau!")
  ```
  As classes `Cachorro` e `Gato` herdam os atributos e métodos da classe `Animal`, mas possuem suas próprias implementações para o método `fazer_barulho()`.

### 4. POLIMORFISMO:
* **Conceito:** A capacidade de um objeto assumir muitas formas. Em outras palavras, diferentes objetos podem responder de forma diferente à mesma mensagem.
* **Exemplo:**
  ```gdscript
  func fazer_todos_os_animais_fazerem_barulho(animais):
      for animal in animais:
          animal.fazer_barulho()
  ```
  A função `fazer_todos_os_animais_fazerem_barulho()` pode receber uma lista de objetos de diferentes tipos (Cachorro, Gato, etc.), e cada objeto responderá de acordo com sua implementação do método `fazer_barulho()`.

**Exemplo completo: Simulando um jogo de RPG**

```gdscript
class Personagem:
    var nome = ""
    var vida = 100

    func atacar(alvo):
        alvo.vida -= 10

class Inimigo extends Personagem:
    pass

class Heroi extends Personagem:
    pass

# Criando instâncias
heroi = Heroi.new()
inimigo = Inimigo.new()

# Atacando
heroi.atacar(inimigo)
print("Vida do inimigo:", inimigo.vida)
```

**Conceitos adicionais:**

* **Classes abstratas:** Classes que não podem ser instanciadas diretamente, servindo como base para outras classes.
* **Interfaces:** Um conjunto de métodos que uma classe deve implementar.
* **Encapsulamento forte:** Ocultando completamente os detalhes internos de uma classe.
* **Polimorfismo paramétrico:** Usando tipos genéricos para criar classes e funções mais flexíveis.

