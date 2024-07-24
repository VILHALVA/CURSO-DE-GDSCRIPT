extends Produto

class_name Roupas

var _tamanho: String  # Tamanho da roupa

# Construtor
func _init(nome: String, preco: float, tamanho: String) -> void:
    ._init(nome, preco)  # Chama o construtor da classe base
    _tamanho = tamanho

# Sobrescreve o método exibir_detalhes para incluir o tamanho
func exibir_detalhes() -> void:
    print("Roupas: ", get_nome(), ", Preço: R$", get_preco(), ", Tamanho: ", _tamanho)
