extends Node

var pontuacao: int = 0

func _ready() -> void:
    print("Pontuação inicial: ", pontuacao)
    aumentar_pontuacao(10)
    print("Pontuação após aumento: ", pontuacao)

func aumentar_pontuacao(valor: int) -> void:
    pontuacao += valor
    print("Pontuação aumentada por ", valor, ". Nova pontuação: ", pontuacao)
