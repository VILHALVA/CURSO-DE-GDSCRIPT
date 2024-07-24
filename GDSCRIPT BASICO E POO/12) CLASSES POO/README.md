# CLASSES POO
Programação Orientada a Objetos (POO) é um paradigma de programação que organiza o código em "objetos" que possuem propriedades e comportamentos. Em GDScript, você pode usar conceitos de POO para criar scripts que encapsulam dados e funcionalidades de forma modular e reutilizável.

Os quatro pilares da Programação Orientada a Objetos são:

1. **Encapsulamento**
2. **Abstração**
3. **Herança**
4. **Polimorfismo**

Vamos explorar cada um desses pilares em GDScript com exemplos práticos.

## 1. **Encapsulamento**
**Encapsulamento** refere-se ao conceito de ocultar os detalhes internos do funcionamento de um objeto e expor apenas as funcionalidades necessárias. Em GDScript, isso é feito usando variáveis e métodos privados e públicos.

### Exemplo de Encapsulamento
#### Script: `Carro.gd`
```gdscript
extends Node

# Variáveis privadas (ocultas fora da classe)
var _marca: String
var _velocidade: int

# Variáveis públicas (acessíveis fora da classe)
var cor: String

# Construtor
func _init(marca: String, cor: String) -> void:
    _marca = marca
    self.cor = cor
    _velocidade = 0

# Método público
func acelerar(valor: int) -> void:
    _velocidade += valor
    print("Velocidade atual: ", _velocidade)

# Método privado
func _frear(valor: int) -> void:
    _velocidade -= valor
    if _velocidade < 0:
        _velocidade = 0
    print("Velocidade após frear: ", _velocidade)
```

Neste exemplo:
- **Variáveis privadas** `_marca` e `_velocidade` são usadas internamente e não podem ser acessadas diretamente fora da classe.
- **Método público** `acelerar()` é acessível de fora da classe e pode modificar o estado do objeto.
- **Método privado** `_frear()` é utilizado internamente e não pode ser chamado de fora da classe.

## 2. **Abstração**
**Abstração** é o processo de esconder complexidades e mostrar apenas as funcionalidades necessárias de um objeto. Isso permite que você use objetos sem precisar entender completamente como eles funcionam internamente.

### Exemplo de Abstração
#### Script: `Funcionario.gd`
```gdscript
extends Node

# Abstração de um funcionário
class_name Funcionario

var nome: String
var salario: float

# Método para calcular o salário anual
func calcular_salario_anual() -> float:
    return salario * 12
```

#### Script Principal: `Main.gd`
```gdscript
extends Node

func _ready() -> void:
    var funcionario: Funcionario = Funcionario.new()
    funcionario.nome = "João"
    funcionario.salario = 3000.0
    
    print("Salário anual de ", funcionario.nome, ": ", funcionario.calcular_salario_anual())
```

Neste exemplo:
- O **Funcionário** é uma abstração que expõe uma funcionalidade (`calcular_salario_anual()`) sem expor os detalhes internos de como o salário é calculado.

## 3. **Herança**
**Herança** permite que uma classe (subclasse) herde propriedades e métodos de outra classe (superclasse). Isso facilita a reutilização de código e a criação de uma hierarquia de classes.

### Exemplo de Herança
#### Script Base: `Animal.gd`
```gdscript
extends Node

class_name Animal

var nome: String

func fazer_som() -> void:
    print(nome, " faz um som.")
```

#### Script Derivado: `Cachorro.gd`
```gdscript
extends Animal

class_name Cachorro

func fazer_som() -> void:
    print(nome, " late.")
```

#### Script Principal: `Main.gd`
```gdscript
extends Node

func _ready() -> void:
    var cachorro: Cachorro = Cachorro.new()
    cachorro.nome = "Rex"
    cachorro.fazer_som()  # Saída: Rex late.
```

Neste exemplo:
- **Cachorro** herda de **Animal** e sobrescreve o método `fazer_som()`, personalizando o comportamento para um cachorro.

## 4. **Polimorfismo**
**Polimorfismo** é a capacidade de diferentes classes usarem o mesmo nome de método, mas com comportamentos diferentes. Isso permite que você trate diferentes tipos de objetos de maneira uniforme.

### Exemplo de Polimorfismo
#### Script Base: `Forma.gd`
```gdscript
extends Node

class_name Forma

func desenhar() -> void:
    print("Desenhando uma forma.")
```

#### Script Derivado: `Circulo.gd`
```gdscript
extends Forma

class_name Circulo

func desenhar() -> void:
    print("Desenhando um círculo.")
```

#### Script Derivado: `Quadrado.gd`
```gdscript
extends Forma

class_name Quadrado

func desenhar() -> void:
    print("Desenhando um quadrado.")
```

#### Script Principal: `Main.gd`
```gdscript
extends Node

func _ready() -> void:
    var formas: Array = [
        Circulo.new(),
        Quadrado.new()
    ]
    
    for forma in formas:
        forma.desenhar()
```

Neste exemplo:
- O método `desenhar()` é definido nas classes `Forma`, `Circulo` e `Quadrado`, mas o comportamento é diferente para cada classe.
- O **polimorfismo** permite que você trate todas as formas de maneira uniforme, chamando `desenhar()` sem se preocupar com o tipo específico da forma.

