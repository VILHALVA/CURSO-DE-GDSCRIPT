extends Node2D

var velocidade = 100

func _physics_process(delta):
    position.x += velocidade * delta