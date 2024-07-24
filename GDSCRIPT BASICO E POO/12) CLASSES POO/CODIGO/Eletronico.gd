extends Produto

class_name Eletronico

var _warranty_period: int  # Garantia em meses

# Construtor
func _init(nome: String, preco: float, garantia: int) -> void:
    ._init(nome, preco)  # Chama o construtor da classe base
    _warranty_period = garantia

# Sobrescreve o método exibir_detalhes para incluir a garantia
func exibir_detalhes() -> void:
    print("Eletrônico: ", get_nome(), ", Preço: R$", get_preco(), ", Garantia: ", _warranty_period, " meses")
