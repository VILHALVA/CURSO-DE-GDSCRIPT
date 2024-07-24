extends Node

var inventario: Dictionary = {
    "armas": ["espada", "arco"],
    "itens": {
        "poção": 5,
        "dinheiro": 100
    }
}

func _ready() -> void:
    # Adiciona um item
    add_item("itens", "pocao_mana", 3)
    
    # Remove um item
    remove_item("itens", "poção", 2)
    
    # Mostra o inventário
    print_inventory()

func add_item(tipo: String, item: String, quantidade: int) -> void:
    if not inventario.has(tipo):
        inventario[tipo] = {}
    
    if inventario[tipo].has(item):
        inventario[tipo][item] += quantidade
    else:
        inventario[tipo][item] = quantidade

func remove_item(tipo: String, item: String, quantidade: int) -> void:
    if inventario.has(tipo) and inventario[tipo].has(item):
        inventario[tipo][item] -= quantidade
        if inventario[tipo][item] <= 0:
            inventario[tipo].erase(item)

func print_inventory() -> void:
    for tipo in inventario.keys():
        print("Tipo: ", tipo)
        for item in inventario[tipo].keys():
            print("  ", item, ": ", inventario[tipo][item])
