# CONDICIONAIS 
Em GDScript, condicionais são usados para executar blocos de código com base em condições lógicas. Eles permitem que você tome decisões em seu programa e execute diferentes seções de código dependendo dos valores das variáveis ou das condições avaliadas.

Aqui está uma visão geral dos principais tipos de estruturas condicionais em GDScript:

## 1. **Estrutura Condicional `if`**
A estrutura `if` é usada para executar um bloco de código se uma condição for verdadeira.

```gdscript
var idade: int = 18

func _ready() -> void:
    if idade >= 18:
        print("Você é maior de idade.")
```

Se a condição `idade >= 18` for verdadeira, a mensagem "Você é maior de idade." será exibida.

### Estrutura Condicional `if-else`
A estrutura `if-else` permite definir um bloco de código a ser executado se a condição for verdadeira e outro bloco se for falsa.

```gdscript
var idade: int = 16

func _ready() -> void:
    if idade >= 18:
        print("Você é maior de idade.")
    else:
        print("Você é menor de idade.")
```

Se `idade` for menor que 18, a mensagem "Você é menor de idade." será exibida.

### Estrutura Condicional `if-elif-else`
A estrutura `if-elif-else` permite verificar múltiplas condições.

```gdscript
var nota: int = 85

func _ready() -> void:
    if nota >= 90:
        print("Excelente")
    elif nota >= 75:
        print("Bom")
    elif nota >= 50:
        print("Satisfatório")
    else:
        print("Insuficiente")
```

Dependendo do valor de `nota`, uma das mensagens será exibida.

## 2. **Operadores Lógicos em Condicionais**
Você pode usar operadores lógicos para combinar múltiplas condições.

- **E Lógico (`and`):** Retorna `true` se ambas as condições forem verdadeiras.
  ```gdscript
  var idade: int = 20
  var tem_cnh: bool = true

  func _ready() -> void:
      if idade >= 18 and tem_cnh:
          print("Pode dirigir.")
  ```

- **OU Lógico (`or`):** Retorna `true` se pelo menos uma das condições for verdadeira.
  ```gdscript
  var idade: int = 16
  var tem_cnh: bool = false

  func _ready() -> void:
      if idade >= 18 or tem_cnh:
          print("Pode dirigir.")
      else:
          print("Não pode dirigir.")
  ```

- **Não Lógico (`not`):** Retorna `true` se a condição for falsa.
  ```gdscript
  var tem_cnh: bool = false

  func _ready() -> void:
      if not tem_cnh:
          print("Você precisa de uma CNH para dirigir.")
  ```

## 3. **Estrutura Condicional Aninhada**
Você pode aninhar estruturas condicionais para criar lógica mais complexa.

```gdscript
var idade: int = 22
var tem_cnh: bool = true

func _ready() -> void:
    if idade >= 18:
        if tem_cnh:
            print("Pode dirigir.")
        else:
            print("Você precisa de uma CNH para dirigir.")
    else:
        print("Você é menor de idade.")
```

## 4. **Condicionais com `match`**
O operador `match` é uma alternativa ao `if-elif-else` e é útil para comparar uma variável com múltiplos valores possíveis.

```gdscript
var dia_da_semana: int = 3  # 1 = Segunda, 2 = Terça, etc.

func _ready() -> void:
    match dia_da_semana:
        1:
            print("Segunda-feira")
        2:
            print("Terça-feira")
        3:
            print("Quarta-feira")
        4:
            print("Quinta-feira")
        5:
            print("Sexta-feira")
        6:
            print("Sábado")
        7:
            print("Domingo")
        _:
            print("Dia inválido")
```

O operador `match` verifica a variável `dia_da_semana` e imprime o dia da semana correspondente.

