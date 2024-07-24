# VARIAVEIS
Em GDScript, variáveis são usadas para armazenar dados que podem ser acessados e modificados durante a execução do programa. Aqui está uma visão geral detalhada sobre variáveis em GDScript, incluindo tipos, escopo, e uso:

## 1. **Variáveis de Tipo Primitivo**
- **Inteiro (int):** Números inteiros.
  ```gdscript
  var idade: int = 25
  ```

- **Float (float):** Números de ponto flutuante (decimais).
  ```gdscript
  var altura: float = 1.75
  ```

- **Booleano (bool):** Valores lógicos `true` ou `false`.
  ```gdscript
  var ativo: bool = true
  ```

- **String (String):** Sequências de caracteres.
  ```gdscript
  var nome: String = "João"
  ```

## 2. **Variáveis de Tipo Estruturado**
- **Array (Array):** Coleções ordenadas de itens que podem ser de qualquer tipo.
  ```gdscript
  var lista_numeros: Array = [1, 2, 3, 4, 5]
  ```

- **Dictionary (Dictionary):** Coleções de pares chave-valor.
  ```gdscript
  var pessoa: Dictionary = {"nome": "Ana", "idade": 30}
  ```

- **Vector2 (Vector2):** Representa um vetor 2D com componentes `x` e `y`.
  ```gdscript
  var posicao: Vector2 = Vector2(10, 20)
  ```

- **Vector3 (Vector3):** Representa um vetor 3D com componentes `x`, `y` e `z`.
  ```gdscript
  var localizacao: Vector3 = Vector3(10, 20, 30)
  ```

- **Color (Color):** Representa uma cor com componentes `r`, `g`, `b` e `a`.
  ```gdscript
  var cor: Color = Color(1, 0, 0, 1) # Vermelho
  ```

## 3. **Variáveis de Tipo Especializado**
- **RID (RID):** Identificador de recurso para objetos internos do Godot.
  ```gdscript
  var recurso_id: RID = RID()
  ```

- **NodePath (NodePath):** Caminho para um nó em uma cena.
  ```gdscript
  var caminho: NodePath = NodePath("Caminho/Para/No")
  ```

- **Transform2D (Transform2D):** Representa uma transformação 2D (posição, rotação, escala).
  ```gdscript
  var transformacao: Transform2D = Transform2D()
  ```

- **Transform (Transform):** Representa uma transformação 3D.
  ```gdscript
  var transformacao_3d: Transform = Transform()
  ```

- **Quat (Quat):** Representa uma rotação usando quaternions.
  ```gdscript
  var rotacao: Quat = Quat()
  ```

- **Plane (Plane):** Representa um plano 3D.
  ```gdscript
  var plano: Plane = Plane()
  ```

- **AABB (AABB):** Representa uma caixa delimitadora alinhada aos eixos.
  ```gdscript
  var caixa: AABB = AABB()
  ```

- **Basis (Basis):** Representa uma base ortonormal 3x3 usada para rotação.
  ```gdscript
  var base: Basis = Basis()
  ```

## Escopo de Variáveis
- **Variáveis Locais:** Definidas dentro de funções ou métodos e só são acessíveis dentro desse bloco de código.
  ```gdscript
  func exemplo_funcao():
      var local_var = 10 # Só acessível dentro de exemplo_funcao
  ```

- **Variáveis de Instância:** Definidas dentro de uma classe e acessíveis por todos os métodos dessa classe.
  ```gdscript
  extends Node

  var inst_var = 5 # Acessível por todos os métodos desta classe

  func _ready():
      print(inst_var)
  ```

- **Variáveis Globais:** Definidas fora de qualquer função ou método e acessíveis globalmente. Em GDScript, geralmente são definidas como propriedades da classe ou como variáveis no arquivo `.gd` principal.
  ```gdscript
  var global_var = 100

  func _ready():
      print(global_var)
  ```

