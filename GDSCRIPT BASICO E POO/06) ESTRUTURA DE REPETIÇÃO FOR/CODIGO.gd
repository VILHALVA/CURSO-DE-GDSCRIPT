extends Node

func _ready() -> void:
    # Exemplo 1: Iterando com Intervalos
    print("Exemplo 1: Iterando com Intervalos")
    for i in range(3):
        print("Número: ", i)
    
    # Exemplo 2: Iterando Sobre Arrays
    print("\nExemplo 2: Iterando Sobre Arrays")
    var nomes: Array = ["Alice", "Bob", "Charlie"]
    for nome in nomes:
        print("Nome: ", nome)
    
    # Exemplo 3: Iterando Sobre Dicionários
    print("\nExemplo 3: Iterando Sobre Dicionários")
    var dados: Dictionary = {"idade": 25, "altura": 1.75, "cidade": "Rio de Janeiro"}
    for chave in dados.keys():
        print("Chave: ", chave, " Valor: ", dados[chave])
    
    # Exemplo 4: Iterando com Índices e Valores
    print("\nExemplo 4: Iterando com Índices e Valores")
    var frutas: Array = ["Maçã", "Laranja", "Banana"]
    for index, fruta in frutas.enumerate():
        print("Índice: ", index, " Fruta: ", fruta)
