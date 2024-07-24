extends Node

var math_utils: Node
var file_utils: Node

func _ready() -> void:
    math_utils = preload("res://game_utils/MathUtils.gd").new()
    file_utils = preload("res://game_utils/FileUtils.gd").new()
    
    var numero: int = 7
    print("O quadrado de ", numero, " é ", math_utils.calcular_quadrado(numero))
    print("O cubo de ", numero, " é ", math_utils.calcular_cubo(numero))
    
    var conteudo: String = file_utils.ler_arquivo("res://dados.txt")
    print("Conteúdo do arquivo: ", conteudo)
