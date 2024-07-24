# VARIAVEIS COMPOSTAS
Em GDScript, variáveis compostas são estruturas de dados que permitem armazenar múltiplos valores de diferentes tipos em uma única variável. As variáveis compostas mais comuns são **arrays** e **dicionários**. Vamos explorar cada uma delas em detalhes.

## 1. **Arrays**
Arrays são listas ordenadas de elementos. Eles podem conter valores de qualquer tipo e o mesmo array pode misturar diferentes tipos de dados.

### Criação e Manipulação de Arrays
#### Criação
```gdscript
var numeros: Array = [1, 2, 3, 4, 5]
var frutas: Array = ["maçã", "banana", "laranja"]
var misturado: Array = [1, "maçã", 3.14, true]
```

#### Acesso a Elementos
Você pode acessar elementos em um array usando índices, que começam em 0.

```gdscript
print(numeros[0])  # Imprime: 1
print(frutas[1])  # Imprime: banana
```

#### Modificação
```gdscript
numeros[2] = 10
print(numeros)  # Imprime: [1, 2, 10, 4, 5]
```

#### Adição e Remoção
```gdscript
numeros.append(6)  # Adiciona 6 ao final do array
print(numeros)  # Imprime: [1, 2, 10, 4, 5, 6]

numeros.remove(2)  # Remove o elemento no índice 2
print(numeros)  # Imprime: [1, 2, 4, 5, 6]
```

#### Iteração
Você pode iterar sobre os elementos de um array usando um loop `for`.

```gdscript
for fruta in frutas:
    print(fruta)
```

## 2. **Dicionários**
Dicionários são coleções de pares chave-valor. Cada valor é acessado por uma chave única.

### Criação e Manipulação de Dicionários
#### Criação
```gdscript
var pessoa: Dictionary = {
    "nome": "João",
    "idade": 30,
    "cidade": "São Paulo"
}
```

#### Acesso a Valores
Você pode acessar valores no dicionário usando suas chaves.

```gdscript
print(pessoa["nome"])  # Imprime: João
print(pessoa["idade"])  # Imprime: 30
```

#### Modificação
```gdscript
pessoa["idade"] = 31
print(pessoa)  # Imprime: {"nome": "João", "idade": 31, "cidade": "São Paulo"}
```

#### Adição e Remoção
```gdscript
pessoa["telefone"] = "1234-5678"  # Adiciona uma nova chave-valor
print(pessoa)  # Imprime: {"nome": "João", "idade": 31, "cidade": "São Paulo", "telefone": "1234-5678"}

pessoa.erase("cidade")  # Remove a chave "cidade"
print(pessoa)  # Imprime: {"nome": "João", "idade": 31, "telefone": "1234-5678"}
```

#### Iteração
Você pode iterar sobre os pares chave-valor de um dicionário.

```gdscript
for chave in pessoa.keys():
    print(chave, ": ", pessoa[chave])
```

