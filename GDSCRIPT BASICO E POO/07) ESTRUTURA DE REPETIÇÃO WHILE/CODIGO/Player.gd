extends Node2D

var inventory: Array = []

func _ready() -> void:
    print("O jogador está pronto para explorar!")

func collect_item(item_name: String) -> void:
    inventory.append(item_name)
    print("Item coletado: ", item_name)
