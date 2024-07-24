extends Node

func ler_arquivo(caminho: String) -> String:
    var file: File = File.new()
    if file.file_exists(caminho):
        file.open(caminho, File.READ)
        var conteudo: String = file.get_as_text()
        file.close()
        return conteudo
    else:
        return "Arquivo não encontrado."
