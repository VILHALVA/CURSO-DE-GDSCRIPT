# MODULOS E PACOTES
Em GDScript, a modularização do código pode ser feita por meio da criação e uso de scripts, módulos e pacotes. Embora GDScript não use pacotes da mesma forma que algumas outras linguagens (como módulos de Python), ele permite a organização e reutilização de código através de scripts e classes. Vamos explorar como você pode criar e usar módulos e pacotes em GDScript.

Módulos em GDScript são basicamente scripts que podem ser reutilizados em diferentes partes do seu projeto. Em GDScript, qualquer script pode atuar como um módulo, e você pode instanciar ou referenciar esses scripts em outros scripts.

### 1.1 **Criando um Módulo**
Para criar um módulo, você simplesmente cria um script com a funcionalidade desejada. Por exemplo, vamos criar um módulo para gerenciar cálculos matemáticos.

#### Script de Módulo: `MathUtils.gd`
```gdscript
extends Node

# Função para calcular o quadrado de um número
func calcular_quadrado(numero: int) -> int:
    return numero * numero

# Função para calcular o cubo de um número
func calcular_cubo(numero: int) -> int:
    return numero * numero * numero
```

### 1.2 **Usando o Módulo em Outro Script**
Para usar o módulo `MathUtils`, você precisa carregá-lo e usá-lo em outro script.

#### Script Principal: `Main.gd`
```gdscript
extends Node

# Referência ao módulo
var math_utils: Node

func _ready() -> void:
    # Carrega o módulo
    math_utils = preload("res://MathUtils.gd").new()
    
    var numero: int = 5
    var quadrado: int = math_utils.calcular_quadrado(numero)
    var cubo: int = math_utils.calcular_cubo(numero)
    
    print("O quadrado de ", numero, " é ", quadrado)
    print("O cubo de ", numero, " é ", cubo)
```

### 1.3 **Organizando Módulos**
Você pode organizar módulos em pastas para manter seu projeto organizado. Por exemplo, você pode ter uma estrutura de diretórios como esta:

```
res://
    scripts/
        MathUtils.gd
        GameUtils.gd
    scenes/
        Main.tscn
        Game.tscn
```

Em `Main.gd`, você pode referenciar `MathUtils.gd` usando:

```gdscript
var math_utils: Node = preload("res://scripts/MathUtils.gd").new()
```

## 2. **Pacotes em GDScript**
Embora GDScript não suporte pacotes como algumas outras linguagens, você pode organizar scripts e recursos em pastas para simular a estrutura de pacotes. Cada pasta pode conter scripts e outros recursos que são usados como um módulo ou um pacote.

### 2.1 **Criando uma Estrutura de Pacote**
Você pode criar uma pasta para cada "pacote" ou módulo e colocar os scripts relacionados dentro dela. Por exemplo, você pode ter um pacote de "utilitários de jogo":

```
res://
    game_utils/
        __init__.gd
        MathUtils.gd
        FileUtils.gd
    main.tscn
```

#### Script `__init__.gd`
Você pode usar um script chamado `__init__.gd` para inicializar o pacote e expor funcionalidades principais. Em GDScript, isso não é obrigatório, mas pode ajudar a organizar o código.

```gdscript
extends Node

# Inicializa o pacote
func _ready() -> void:
    print("Pacote de utilitários de jogo carregado.")
```

### 2.2 **Usando Scripts de Pacotes**
Para usar scripts dentro de um pacote, você pode referenciá-los diretamente com o caminho da pasta.

#### Script Principal: `main.gd`
```gdscript
extends Node

func _ready() -> void:
    var math_utils: Node = preload("res://game_utils/MathUtils.gd").new()
    var file_utils: Node = preload("res://game_utils/FileUtils.gd").new()
    
    var numero: int = 10
    var quadrado: int = math_utils.calcular_quadrado(numero)
    print("O quadrado de ", numero, " é ", quadrado)
    
    # Suponha que FileUtils.gd tenha uma função chamada 'ler_arquivo'
    # file_utils.ler_arquivo("caminho/para/arquivo.txt")
```

### 3. **Boas Práticas**
- **Organização**: Mantenha seus scripts organizados em pastas para modularizar e facilitar a manutenção do código.
- **Preload**: Use `preload()` para carregar scripts de módulo em tempo de desenvolvimento e evitar problemas de carregamento em tempo de execução.
- **Nomes Descritivos**: Use nomes descritivos para scripts e pastas para que fique claro o propósito de cada módulo e pacote.

