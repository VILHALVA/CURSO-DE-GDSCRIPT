extends Node

# Lista para armazenar contatos
var contacts: Array = []

func _ready() -> void:
    # Adicionando alguns contatos
    add_contact("John Doe", "123-456-7890")
    add_contact("Jane Smith", "987-654-3210")
    
    # Listando contatos
    print("Contacts List:")
    list_contacts()
    
    # Removendo um contato
    remove_contact("John Doe")
    
    # Listando contatos novamente
    print("\nUpdated Contacts List:")
    list_contacts()

# Adiciona um contato à lista
func add_contact(name: String, phone_number: String) -> void:
    var contact = preload("res://contact.gd").new(name, phone_number)
    contacts.append(contact)

# Remove um contato pelo nome
func remove_contact(name: String) -> void:
    for contact in contacts:
        if contact.name == name:
            contacts.erase(contact)
            break

# Lista todos os contatos
func list_contacts() -> void:
    for contact in contacts:
        print(contact.__str__())
