extends Node

func _ready() -> void:
    # Operadores Aritméticos
    var a = 10
    var b = 3
    print("Soma: ", a + b)  # 13
    print("Subtração: ", a - b)  # 7
    print("Multiplicação: ", a * b)  # 30
    print("Divisão: ", a / b)  # 3.333
    print("Divisão Inteira: ", a // b)  # 3
    print("Módulo: ", a % b)  # 1
    print("Exponenciação: ", a ** b)  # 1000

    # Operadores Relacionais
    print("Igualdade: ", a == 10)  # true
    print("Diferença: ", a != b)  # true
    print("Maior que: ", a > b)  # true
    print("Menor que: ", a < b)  # false

    # Operadores Lógicos
    var c = true
    var d = false
    print("E Lógico: ", c and d)  # false
    print("OU Lógico: ", c or d)  # true
    print("Não Lógico: ", not c)  # false

    # Operadores Bit a Bit
    var e = 6  # 0110 em binário
    var f = 3  # 0011 em binário
    print("E Bit a Bit: ", e & f)  # 2 (0010 em binário)
    print("OU Bit a Bit: ", e | f)  # 7 (0111 em binário)
    print("XOR Bit a Bit: ", e ^ f)  # 5 (0101 em binário)
    print("Negação Bit a Bit: ", ~e)  # -7
    print("Deslocamento para a Esquerda: ", e << 1)  # 12 (1100 em binário)
    print("Deslocamento para a Direita: ", e >> 1)  # 3 (0011 em binário)
