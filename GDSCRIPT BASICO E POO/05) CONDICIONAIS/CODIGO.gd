extends Node

func _ready() -> void:
    var idade: int = 20
    var temperatura: float = 25.5
    var esta_chovendo: bool = false

    # Verificação básica com if-else
    if idade >= 18:
        print("Você é maior de idade.")
    else:
        print("Você é menor de idade.")

    # Condicionais com operadores lógicos
    if idade >= 18 and not esta_chovendo:
        print("Você pode sair para passear.")
    elif idade < 18 or esta_chovendo:
        print("Fique em casa.")

    # Estrutura match
    var dia: int = 3
    match dia:
        1:
            print("Segunda-feira")
        2:
            print("Terça-feira")
        3:
            print("Quarta-feira")
        _:
            print("Outro dia da semana")
