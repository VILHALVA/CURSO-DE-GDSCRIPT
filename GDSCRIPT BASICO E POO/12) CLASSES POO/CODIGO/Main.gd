extends Node

func _ready() -> void:
    # Criação de produtos
    var produto1: Produto = Eletronico.new("Smartphone", 1500.0, 24)
    var produto2: Produto = Roupas.new("Camisa Polo", 120.0, "M")
    
    # Armazena produtos em uma lista
    var produtos: Array = [produto1, produto2]
    
    # Itera sobre a lista e exibe detalhes de cada produto
    for produto in produtos:
        produto.exibir_detalhes()
