# FUNÇOES 
Funções são blocos de código reutilizáveis que executam uma tarefa específica. Em GDScript, funções são uma maneira fundamental de organizar e modularizar o código. Elas permitem que você defina um conjunto de instruções que podem ser chamadas em diferentes partes do seu código, o que torna o desenvolvimento mais eficiente e o código mais limpo.

## Sintaxe Básica
A sintaxe básica para definir uma função em GDScript é:

```gdscript
func nome_da_funcao(parametro1, parametro2, ...):
    # Código da função
    return valor
```

## Exemplo Simples
Aqui está um exemplo básico de uma função que soma dois números e retorna o resultado:

```gdscript
extends Node

func _ready() -> void:
    var resultado: int = somar(5, 7)
    print("O resultado da soma é: ", resultado)

func somar(a: int, b: int) -> int:
    return a + b
```

## Explicação
- **`func`**: Palavra-chave usada para definir uma função.
- **`nome_da_funcao`**: Nome da função. Pode ser qualquer identificador válido.
- **`parametro1, parametro2, ...`**: Parâmetros que a função recebe. São opcionais.
- **`return`**: Palavra-chave usada para retornar um valor da função. Pode ser omitida se a função não precisar retornar um valor.

## Tipos de Funções
### 1. **Funções Simples**
Funções que realizam uma tarefa simples e não retornam um valor.

```gdscript
extends Node

func _ready() -> void:
    saudacao("João")

func saudacao(nome: String) -> void:
    print("Olá, ", nome, "!")
```

Aqui, a função `saudacao` apenas imprime uma mensagem e não retorna um valor (`void`).

### 2. **Funções com Retorno**
Funções que realizam uma tarefa e retornam um valor.

```gdscript
extends Node

func _ready() -> void:
    var dobro: int = calcular_dobro(4)
    print("O dobro de 4 é: ", dobro)

func calcular_dobro(numero: int) -> int:
    return numero * 2
```

Neste exemplo, a função `calcular_dobro` retorna o dobro do número fornecido.

### 3. **Funções com Valores Padrão**
Você pode definir valores padrão para os parâmetros das funções.

```gdscript
extends Node

func _ready() -> void:
    print(dizer_ola())        # Usa o valor padrão
    print(dizer_ola("Carlos"))  # Usa o valor fornecido

func dizer_ola(nome: String = "Mundo") -> String:
    return "Olá, " + nome + "!"
```

Se nenhum argumento for passado para `dizer_ola`, ele usará `"Mundo"` como padrão.

### 4. **Funções Anônimas (Lambdas)**
Funções anônimas são funções que não têm um nome e são frequentemente usadas como argumentos para outras funções.

```gdscript
extends Node

func _ready() -> void:
    var resultado: int = aplicar_funcao(5, func(x): return x * x)
    print("O quadrado de 5 é: ", resultado)

func aplicar_funcao(valor: int, funcao: Callable) -> int:
    return funcao.call(valor)
```

Aqui, `aplicar_funcao` usa uma função anônima para calcular o quadrado de um número.

## Considerações
- **Escopo de Funções:** As funções definidas fora de métodos como `_ready()` estão disponíveis para serem chamadas em qualquer parte do script.
- **Parâmetros Opcionais:** Use valores padrão para tornar alguns parâmetros opcionais.
- **Funções Anônimas:** São úteis para callbacks e funções de ordem superior.

