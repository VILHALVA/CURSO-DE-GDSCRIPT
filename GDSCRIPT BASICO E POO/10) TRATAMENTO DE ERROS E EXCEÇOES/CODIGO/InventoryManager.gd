extends Node

var inventario: Dictionary = {
    "armas": [],
    "itens": {}
}

var caminho_arquivo: String = "user://inventario_salvo.save"

signal erro_ocorrido(erro: String)

func _ready() -> void:
    connect("erro_ocorrido", self, "_on_erro_ocorrido")
    carregar_inventario()
    adicionar_item("itens", "poção", 5)
    adicionar_item("armas", "espada", 1)
    salvar_inventario()
    
func adicionar_item(tipo: String, item: String, quantidade: int) -> void:
    if not inventario.has(tipo):
        inventario[tipo] = {}
    
    if inventario[tipo].has(item):
        inventario[tipo][item] += quantidade
    else:
        inventario[tipo][item] = quantidade
    
    print("Item adicionado: ", tipo, " - ", item, ": ", quantidade)

func salvar_inventario() -> void:
    var file: File = File.new()
    try:
        file.open(caminho_arquivo, File.WRITE)
        file.store_string(to_json(inventario))
        file.close()
        print("Inventário salvo com sucesso.")
    except Error as e:
        emit_signal("erro_ocorrido", "Erro ao salvar inventário: " + str(e))

func carregar_inventario() -> void:
    var file: File = File.new()
    if File.exists(caminho_arquivo):
        try:
            file.open(caminho_arquivo, File.READ)
            var conteudo: String = file.get_as_text()
            inventario = parse_json(conteudo)
            file.close()
            print("Inventário carregado com sucesso.")
        except Error as e:
            emit_signal("erro_ocorrido", "Erro ao carregar inventário: " + str(e))
    else:
        print("Nenhum inventário salvo encontrado.")

func _on_erro_ocorrido(erro: String) -> void:
    print("Tratamento de erro: ", erro)

