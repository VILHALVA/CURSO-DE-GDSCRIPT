extends Node

var player: Node2D
var items: Dictionary = {
    "arvore": "Você encontrou uma árvore.",
    "rio": "Você encontrou um rio.",
    "cachoeira": "Você encontrou uma cachoeira."
}
var found_items: Array = []

func _ready() -> void:
    player = $Player
    start_game()

func start_game() -> void:
    var items_found: int = 0
    var max_items: int = len(items.keys())
    
    while items_found < max_items:
        var item_name: String = get_random_item()
        if item_name not in found_items:
            player.collect_item(item_name)
            found_items.append(item_name)
            items_found += 1
        else:
            print("Item já encontrado: ", item_name)
    
    print("Todos os itens foram coletados!")
    show_summary()

func get_random_item() -> String:
    var keys: Array = items.keys()
    return keys[randi() % keys.size()]

func show_summary() -> void:
    print("\nResumo da Aventura:")
    for item in found_items:
        print(items[item])
