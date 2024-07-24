# OPERADORES 
Em GDScript, operadores são usados para realizar operações sobre variáveis e valores. Eles podem ser classificados em várias categorias, incluindo operadores aritméticos, relacionais, lógicos e bit a bit. Aqui está uma visão geral dos operadores em GDScript:

## 1. **Operadores Aritméticos**
Esses operadores realizam operações matemáticas básicas.

- **Adição (`+`):** Soma dois valores.
  ```gdscript
  var a = 5
  var b = 3
  var resultado = a + b  # resultado é 8
  ```

- **Subtração (`-`):** Subtrai um valor de outro.
  ```gdscript
  var a = 5
  var b = 3
  var resultado = a - b  # resultado é 2
  ```

- **Multiplicação (`*`):** Multiplica dois valores.
  ```gdscript
  var a = 5
  var b = 3
  var resultado = a * b  # resultado é 15
  ```

- **Divisão (`/`):** Divide um valor por outro, resultando em um float.
  ```gdscript
  var a = 5
  var b = 2
  var resultado = a / b  # resultado é 2.5
  ```

- **Divisão Inteira (`//`):** Divide um valor por outro e retorna o quociente inteiro.
  ```gdscript
  var a = 5
  var b = 2
  var resultado = a // b  # resultado é 2
  ```

- **Módulo (`%`):** Retorna o resto da divisão.
  ```gdscript
  var a = 5
  var b = 2
  var resultado = a % b  # resultado é 1
  ```

- **Exponenciação (`**`):** Eleva um valor a uma potência.
  ```gdscript
  var base = 2
  var expoente = 3
  var resultado = base ** expoente  # resultado é 8
  ```

## 2. **Operadores Relacionais**
Esses operadores são usados para comparar valores.

- **Igualdade (`==`):** Verifica se dois valores são iguais.
  ```gdscript
  var a = 5
  var b = 5
  var resultado = (a == b)  # resultado é true
  ```

- **Diferença (`!=`):** Verifica se dois valores são diferentes.
  ```gdscript
  var a = 5
  var b = 3
  var resultado = (a != b)  # resultado é true
  ```

- **Maior que (`>`):** Verifica se um valor é maior que outro.
  ```gdscript
  var a = 5
  var b = 3
  var resultado = (a > b)  # resultado é true
  ```

- **Menor que (`<`):** Verifica se um valor é menor que outro.
  ```gdscript
  var a = 5
  var b = 8
  var resultado = (a < b)  # resultado é true
  ```

- **Maior ou Igual (`>=`):** Verifica se um valor é maior ou igual a outro.
  ```gdscript
  var a = 5
  var b = 5
  var resultado = (a >= b)  # resultado é true
  ```

- **Menor ou Igual (`<=`):** Verifica se um valor é menor ou igual a outro.
  ```gdscript
  var a = 5
  var b = 8
  var resultado = (a <= b)  # resultado é true
  ```

## 3. **Operadores Lógicos**
Esses operadores são usados para combinar ou inverter valores booleanos.

- **E Lógico (`and`):** Retorna `true` se ambos os operandos forem verdadeiros.
  ```gdscript
  var a = true
  var b = false
  var resultado = a and b  # resultado é false
  ```

- **OU Lógico (`or`):** Retorna `true` se pelo menos um dos operandos for verdadeiro.
  ```gdscript
  var a = true
  var b = false
  var resultado = a or b  # resultado é true
  ```

- **Não Lógico (`not`):** Inverte o valor booleano.
  ```gdscript
  var a = true
  var resultado = not a  # resultado é false
  ```

## 4. **Operadores Bit a Bit**
Esses operadores são usados para manipulação de bits de números inteiros.

- **E Bit a Bit (`&`):** Realiza uma operação AND bit a bit.
  ```gdscript
  var a = 5  # 0101 em binário
  var b = 3  # 0011 em binário
  var resultado = a & b  # resultado é 1 (0001 em binário)
  ```

- **OU Bit a Bit (`|`):** Realiza uma operação OR bit a bit.
  ```gdscript
  var a = 5  # 0101 em binário
  var b = 3  # 0011 em binário
  var resultado = a | b  # resultado é 7 (0111 em binário)
  ```

- **XOR Bit a Bit (`^`):** Realiza uma operação XOR bit a bit.
  ```gdscript
  var a = 5  # 0101 em binário
  var b = 3  # 0011 em binário
  var resultado = a ^ b  # resultado é 6 (0110 em binário)
  ```

- **Negação Bit a Bit (`~`):** Realiza uma operação NOT bit a bit.
  ```gdscript
  var a = 5  # 0101 em binário
  var resultado = ~a  # resultado é -6 (inversão dos bits)
  ```

- **Deslocamento para a Esquerda (`<<`):** Desloca os bits para a esquerda.
  ```gdscript
  var a = 5  # 0101 em binário
  var resultado = a << 1  # resultado é 10 (1010 em binário)
  ```

- **Deslocamento para a Direita (`>>`):** Desloca os bits para a direita.
  ```gdscript
  var a = 5  # 0101 em binário
  var resultado = a >> 1  # resultado é 2 (0010 em binário)
  ```

