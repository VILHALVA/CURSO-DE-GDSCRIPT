# ESTRUTURA DE REPETIÇÃO WHILE
A estrutura de repetição `while` em GDScript é usada para executar um bloco de código repetidamente enquanto uma condição for verdadeira. Diferentemente do `for`, que é mais adequado para iterações baseadas em uma sequência ou coleção, o `while` é útil quando o número de iterações não é conhecido de antemão e depende de uma condição que pode mudar ao longo do tempo.

## Sintaxe Básica
```gdscript
var contador: int = 0

func _ready() -> void:
    while contador < 5:
        print("Contador: ", contador)
        contador += 1
```

Neste exemplo, o loop `while` continua a executar enquanto a condição `contador < 5` for verdadeira. A cada iteração, o valor de `contador` é incrementado, e o loop termina quando `contador` atinge 5.

## Exemplos Práticos
### 1. **Contador Simples**
```gdscript
extends Node

func _ready() -> void:
    var contador: int = 0
    while contador < 3:
        print("Contador: ", contador)
        contador += 1
```

Este exemplo imprime o valor do contador de 0 a 2. O loop `while` termina quando `contador` chega a 3.

### 2. **Esperar um Evento ou Condição**
Você pode usar `while` para esperar até que uma condição se torne verdadeira. Aqui está um exemplo simples que usa uma variável de condição:

```gdscript
extends Node

var condition_met: bool = false

func _ready() -> void:
    while not condition_met:
        print("Aguardando condição...")
        # Simula uma condição sendo satisfeita após algum tempo
        # Em um caso real, você poderia ter alguma lógica para definir condition_met como verdadeiro
        condition_met = true
    print("Condição satisfeita!")
```

### 3. **Usando `while` com Entrada do Usuário**
Você pode usar o loop `while` para continuar pedindo entradas do usuário até que uma condição seja satisfeita.

```gdscript
extends Node

func _ready() -> void:
    var entrada: String = ""
    
    while entrada != "sair":
        print("Digite 'sair' para sair do loop:")
        entrada = Input.get_string()  # Obtém entrada do usuário
        print("Você digitou: ", entrada)
    
    print("Loop terminado.")
```

### 4. **Evitar Loops Infinitos**
É importante ter cuidado com loops `while` para evitar loops infinitos, onde a condição nunca se torna falsa. Isso pode travar seu programa ou causar comportamento indesejado.

```gdscript
extends Node

func _ready() -> void:
    var contador: int = 0
    
    while contador < 5:
        print("Contador: ", contador)
        contador += 1
        # Aqui, a condição vai eventualmente ser satisfeita, evitando um loop infinito
```

Se não atualizar a condição ou não ter uma lógica que permita que a condição se torne falsa, você pode acabar com um loop infinito.

### 5. **Loop `while` com `break`**
Você pode usar o comando `break` para sair de um loop `while` antes que a condição se torne falsa.

```gdscript
extends Node

func _ready() -> void:
    var contador: int = 0
    
    while true:
        print("Contador: ", contador)
        contador += 1
        if contador >= 5:
            break  # Sai do loop quando o contador atinge 5
```

Neste exemplo, o loop `while` é um loop infinito (`while true:`) que é interrompido quando `contador` atinge 5, devido ao comando `break`.

## Considerações
- **Evite Loops Infinitos:** Certifique-se de que a condição do loop eventualmente se tornará falsa para evitar que o programa fique preso em um loop infinito.
- **Atualize Condições:** Se o loop depende de variáveis ou condições que mudam, atualize essas variáveis dentro do loop para evitar problemas de desempenho e lógica.
- **Uso de `break`:** Use `break` com cautela para sair de loops antecipadamente, pois pode tornar o fluxo do código menos previsível.

