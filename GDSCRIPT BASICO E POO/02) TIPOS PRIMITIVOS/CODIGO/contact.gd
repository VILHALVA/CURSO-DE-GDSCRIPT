extends Resource

# Definindo propriedades para o contato
var name: String
var phone_number: String

# Construtor para inicializar um contato
func _init(name: String, phone_number: String) -> void:
    self.name = name
    self.phone_number = phone_number

# Método para representar o contato como uma string
func __str__() -> String:
    return "Name: %s, Phone: %s" % [name, phone_number]
