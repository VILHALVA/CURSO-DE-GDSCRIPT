extends Node

# Variável de instância
var pontuacao: int = 0

func _ready() -> void:
    # Variável local
    var nivel: int = 1
    
    # Usando variáveis de tipo primitivo
    var jogador_nome: String = "Alice"
    var jogador_ativo: bool = true
    var jogador_altura: float = 1.85
    
    # Criando e manipulando um array e um dicionário
    var itens: Array = ["Espada", "Escudo", "Poção"]
    var jogador_info: Dictionary = {"nome": jogador_nome, "nivel": nivel}
    
    # Exibindo valores
    print("Nome do Jogador: %s" % jogador_info["nome"])
    print("Itens: %s" % itens)
    print("Pontuação inicial: %d" % pontuacao)
    print("Altura do jogador: %.2f" % jogador_altura)
