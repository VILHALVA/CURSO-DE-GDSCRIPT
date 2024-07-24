# ESTRUTURA DE REPETIÇÃO FOR
Em GDScript, o loop `for` é utilizado para repetir um bloco de código um número específico de vezes ou para iterar sobre coleções de dados, como arrays e dicionários. O loop `for` é uma estrutura muito útil para tarefas que exigem iteração repetitiva.

Aqui está uma visão geral sobre como usar a estrutura de repetição `for` em GDScript:

## 1. **Iterando com Intervalos**
Você pode usar o loop `for` para iterar sobre um intervalo de números. Isso é útil quando você deseja executar um bloco de código um número específico de vezes.

```gdscript
extends Node

func _ready() -> void:
    # Itera de 0 a 4 (5 vezes)
    for i in range(5):
        print("Iteração: ", i)
```

O método `range(5)` cria uma sequência de números de 0 a 4. O loop `for` itera sobre essa sequência e imprime o valor de `i` em cada iteração.

## 2. **Iterando Sobre Arrays**
Você pode usar o loop `for` para iterar sobre os elementos de um array.

```gdscript
extends Node

func _ready() -> void:
    var frutas: Array = ["Maçã", "Banana", "Laranja"]
    
    for fruta in frutas:
        print("Fruta: ", fruta)
```

Aqui, o loop `for` itera sobre cada elemento do array `frutas` e imprime o nome da fruta.

## 3. **Iterando Sobre Dicionários**
Você pode usar o loop `for` para iterar sobre as chaves e valores de um dicionário.

```gdscript
extends Node

func _ready() -> void:
    var pessoa: Dictionary = {"nome": "João", "idade": 30, "cidade": "São Paulo"}
    
    for chave in pessoa.keys():
        print("Chave: ", chave, " Valor: ", pessoa[chave])
```

Neste exemplo, o loop `for` itera sobre as chaves do dicionário `pessoa` e imprime a chave e o valor correspondente.

## 4. **Iterando com Índices e Valores**
Se você precisa tanto do índice quanto do valor ao iterar sobre um array, você pode usar a função `enumerate()` para obter uma tupla com o índice e o valor.

```gdscript
extends Node

func _ready() -> void:
    var cores: Array = ["Vermelho", "Verde", "Azul"]
    
    for index, cor in cores.enumerate():
        print("Índice: ", index, " Cor: ", cor)
```

Aqui, `enumerate()` retorna uma sequência de tuplas, onde cada tupla contém o índice e o valor correspondente do array `cores`.

