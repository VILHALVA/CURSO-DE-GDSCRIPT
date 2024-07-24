extends Node

class_name Produto

# Variáveis privadas
var _nome: String
var _preco: float

# Construtor
func _init(nome: String, preco: float) -> void:
    _nome = nome
    _preco = preco

# Método público para obter o nome
func get_nome() -> String:
    return _nome

# Método público para obter o preço
func get_preco() -> float:
    return _preco

# Método para exibir informações do produto
func exibir_detalhes() -> void:
    print("Produto: ", _nome, ", Preço: R$", _preco)
