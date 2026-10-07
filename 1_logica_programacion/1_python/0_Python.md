# Python I: Sintaxis básica, variables, tipos de datos, Condicionales, Bucles, funciones(Recursividad, lambda) y Manejo de Archivos
Es un lenguaje multiparadigma(POO puro, Funcional, ...) de Programacion de proposito General.

Su creador es Guido Van Rossum.

Es Gestionado por la Python Software Foundation.

## Sintaxis 
Es el conjunto de reglas que define las combinaciones de símbolos que se consideran declaraciones o expresiones correctamente estructuradas en ese lenguaje.

```python
cadena_de_texto  =  "Valor"
# 0              (1) (2)

"""
0: Nombre de la Variable
1: asignacion
2: Parte literal o Valor
"""
# Simbolos Aritmeticos 
# Suma(+)
suma = 2 + 2

# Resta(-)
resta = 2 - 1

# Multiplicacio(*) 
mult = 10 * 10

# Division(/)
div = 10 / 5

# Operadores especiales de python
## Division Entera (//)
div_entera = 10 // 3

## Potencia(**, pow(a, b))
potencia = 10 ** 2
```
## Convencion de Nomenclaturas
- ***Camel Case(casoCamello)***: La primera palabra comienza en minuscula y cada palabra subsiguiente con mayuscula
    - ***Uso***: variables y funciones en algunos lenguajes de programacion (Java, JavaScript, GO).

- ***Pascal Case (PascalCase)***: Todas las palabras se escriben con mayusculas.
    - ***Uso***: Nombre de Clases, Interfaces o Componentes.

- ***Snake Case (snake_case)***: Todas las parabras en minusculas y separadas por guin bajo (_).
    - ***Uso***: Variables y funciones en algunos lenguajes de Programacion (Python, Ruby, Rust).

- ***Screaming Snake Case (SCREAMING_SNAKE_CASE)***: Todas las palabras en mayusculas y separados por guiones bajos.
    - ***Uso***: Constantes o Variables Globales.

- ***Kebab Case(kebab-case)***: Todas las palabras se escriben en minusculas y estan separadas por guiones medios.
    - ***Uso***: Nombres de archivos, URLs, CSS y HTML.


## Tipos de Datos en Python
Los tipos de Datos primitivos en Python.

```python
cadena = "String" # String
Bytes = b"bytes" # bytes
entero = "Integer" # Integer
flotante = 12.05 # decimal o punto flotante
lista = [1, 2, 3, 4] # Array
tupla = (1, 2, 3, 4) # Tuple
conjunto = {1, 2, 3, 4} # Set
dicionario = {"Clave": "Valor", "Key": "Value"} # Dictionary
```

## Duck Typing o Type Hints 
Es indicarle al interprete de Python que tipo de dato es una variable

```python
cadena: str = "String" 
Bytes: bytes = b"bytes" 
entero: int = "Integer" 
flotante: float = 12.05
lista: list[int] = [1, 2, 3, 4] 
conjunto: set[int] = (1, 2, 3, 4)
dicionario: dict[str, str] = {"Clave": "Valor", "Key": "Value"} 
```
> Para la explicacion usaremos la caracteristica de mutabilidad de los tipos de datos.

## Tipos de Datos Mutables
Son tipos de datos que pueden ser alterados.

### Enteros Y Flotantes
Representacion a los numeros Enteros y Flotantes:

```python
# Create
numero: int = 15
flotante: float = 12.05

# Update
numero = 100
flotante = 15.02

# GET
print(numero)
print(flotante)

# Delete
del numero
del flotante

### AYUDA ###
help(float)
```
### Listas
Es una estructura de dato mutable.

```python
# Create
lista: list[int] = [1, 2, 3, 4, 5]

# Update 
lista = [5, 4, 3, 2, 1]

# GET 
posicion: int = 0
print(lista) # Lista Completa
print(lista[posicion]) # Un elemento

# DELETE
del lista[posicion] # Elimina un elemento
del lista # Elimina la lista completa

### AYUDA ###
help(list)

## Otras Operaciones | Metodos | Primitivas.
lista: list[int] = [1, 2, 3, 4]
elemento: int = 5
indice: int = 0
iterable: set | list | dict | tuple = (1, 3, 5, 7)

lista.append(elemento) # Agrega un elemento al final de la lista.
lista.clear() # Elimina todos los eleemntos de la lista.
lista.copy() # Retorna todos los elementos de la lista.
lista.count(elemento) # Retorna el numero de ocurrencias de elemento.
lista.extend(iterable) # Extiende la lista, agregando al final los elementos de el iterable.
lista.index(elemento, start=0, stop=9223372036854775807) # Retorna el primer indice del elemento, si no existe lanza una excepcion.
lista.insert(indice, elemento) # Inserta el objeto antes del indice.
lista.pop(index=-1) # Elimina y retorna el elemento en el indici (defecto ultimo), lanza una excepcion sino lo encuentra.
lista.remove(elemento) # Remueve la primera ocurrencia del elemento.
lista.reverse() # Invierte la lista.
lista.sort(key=None, reverse=False) # Ordena la lista en orden ascendente y retorna None, key es una funcion que indica el orden.
```

### Conjuntos
Son estructuras mutables que no mantiene un orden de sus elementos unicos y para alterar su estructura se realiza operaciones.

```python
# Create
conjunto: set[int] = set() # Vacio
conjunto.add(23)

# Update 
iterable: set[int] | tuple | dict | list = {1, 2, 3, 4}
conjunto.update(iterable) # si hay nuevos elementos los agrega

# Delete
elemento: int = 23
conjunto.remove(elemento) # si existe el elemento entonces lo elimina sino lanza una excepcion.
conjunto.discard(elemento) # Elimina el elemento y no lanza exepcion.
conjunto.clear() # Elimina todos los elementos del conjunto

del conjunto # Elimina el conjunto

### Ayuda | help ###
help(set)

## Otros metodos | operaciones o primitivas
copia_conjunto = conjunto.copy() # Retorna una copia de todos los elementos del conjunto.
elemento_random = conjunto.pop() # Retorna y elimina un arbitrario elemento del conjunto 
```
### Diccionarios
Es un estructura de datos Clave-Valor,donde se debe cumplir que la clave debe ser unica.

```python
# CREATE
diccionario: dict = {"Clave": "Valor"}

## ADD
clave: int = 10
diccionario[clave] = "10"
# GET
print(diccionario[clave])
# UPDATE
diccionario[clave] = "Nuevo Valor"

# DELETE
del diccionario[clave]
# Ayuda
help(dict)
## Metodos 
diccionario.dict() # Retorna nuevo diccionario vacio.
diccionario(**kwargs) # Nuevo diccionario inicializado con los pares name=value; dict(one=1, two=2).
diccionario.clear() # Remueve todos los items del diccionario.
diccionario.copy() # Retorna una copia total del diccionario.
diccionario.get(key="Hola", default=None) # Retorna el valor para la clave key if la clave esta en el diccionario, sino default.
diccionario.items() # Retorna una iterable clave-valor proveendo una vista de los items de el diccionario.
diccionario.keys() # Retorna un iterable de las claves proveendo una vista de las claves de el diccionario.
diccionario.pop(key="Hola") # Remueve la clave especifica y retorna el valor correspondiente, si la clave no es encontrada, retorna el valor default, sino lanza la exceptcion KeyError.
diccionario.popitem() # Remueve y devuelve un par como tuplas (clave, valor). Pares estan retornando en el orden LIFO (last-in, first-out), lanza la exception KeyError si el diccionario esta vacio.
diccionario.update(iterable) # ... Investigar...
diccionario.values() # Retorna un objeto proveendo una vista en los valores del diccionario.
```
## Tipos de datos Inmutables
Son tipos de datos que su estructura interna no se altera.

### Strings
Cadenas de texto

Operaciones Basicas que podemos realizar con las cadenas de texto:

```python
# Create
cadena: str = "String" # Declaracion

# Update
cadena = "Nuevo Valor"

# Get
print(cadena)

# Delete
del cadena

### AYUDA ###
help(str)
```

### Tuplas 
Son estructuras de datos inmutables, esto significa que el contenido de una tupla no se puede alterar.

```python
# CREATE
tupla: tuple[int] = (1, 2, 3, 4, 5)

# Update -> NO PERMItiDO
# GET
posicion: int = 2
print(tupla) # Accede a toda la tupla
print(tupla[posicion]) # Accede a un elemento

# DELETE
del tupla # Elimina la tupla con todos sus elementos
del tupla[posicion] # NO PERMITIDO 
```
## Condicionales (If, Else, Elif y Match-Case)
### Estructura del If-Else:
EL if verifica que si la condicion dentro del bloque es verdadera se ejecute el bloque de instrucciones dentro del if
```python
## Booleanos
condicion: bool = True
if condicion:
    print(f"La condicion [{condicion}] es verdadero!")

# Thurty & Falsy
if "Cadena":
    print("La cadena de texto existe!")

if "":
    print("existe")
else:
    print("No existe")

## Conjuncion Tabla de verdad
a: bool = True
b: bool = True

if a and b:
    print("El resultado de la conjuncion es verdadera")
else:
    print("La conjuncion es falsa")

a = False 
b = False

# negacion conjuncion
if not a and b:
    print("...")
else:
    print("....")

## Disjuncion
a = True
b = False

if a or b:
    print("Disjuncion Verdadera")
else:
    print("Me mentistes...")

## If-Else-Elif
# Si un estudiante de la UBA tiene exactamente 1 millon de dolares imprime 'Millonario', si tiene mas imprime "Multimillonario" y sino imprime "Economicamente bajo".
dolares_alumno: int = 1_000_000

if dolares_alumno == 1_000_000:
    print("Millonario")
elif dolares_alumno > 1_000_000:
    print("Multimillonario")
else:
    print("Economicamente bajo")
```

### Estructura Match - Case
Utilizaremos el Match - Case cuando tengamos que evaluar mas de un caso para una misma variable.

```python
# Solicite e imprima el nombre del numero ingresado por el usuario.

constante: int = int(input("Ingrese un numero del 1 al  10: "))

match constante:
    case 0:
        print("0")
    case 1:
        print("Uno")
    case 2:
        print("Dos")
    case 3:
        print("Tres")
    case:
        print("numero fuera de rango")

print("fin de los condicionales")
```

## Bucles (For, While y Match)
> El bucle For se usa cuando no se la cantidad de veces que tengo que iterar.
> EL bucle While se usa cuando no se cuando dejar de iterar.

Ejemplos de un for:
    - imprima los numeros del 1 al 1000
    - cuantos numeros pares hay del 1 al 100.
    - cuantos numeros primos hay del 1 al 100.

Ejemplos de un while:
    - Encuentre el 5 multiplo de 17.
    - Imprima los 5 primeros numeros pares.
    - Recorrer una lista y encontrar el primer numero.

## Analisis de Algoritmos
- Que es un Algoritmo ?
Un **Algoritmo** es un conjunto de pasos (instrucciones) para resolver un problema y debe tener dos caracteristicas:
    * ***Debe ser Robusto y Correcto***: Que debe contemplar cualquier caso y solucionar el problema que se busca resolver.
    * ***Debe ser Eficiente***: El problema debe resolverse en la menor cantidad de instruciones.

El **Analisis de Algorimos** nos va a permitir estimar **como de eficiente** es un Algoritmo.

Un problema puede tener diferentes soluciones (**Algoritmos**). EL analisis de algoritmos nos va ha **permitir comparar algoritmos y elegir el mas eficiente**.

### Comlejidad Temporal y Espacial

- Como estudiar el rendimiento de un algoritmo ?
    - ***Coplejidad Temporal***: Estima el tiempo requerido de un algoritmo

    - ***Complejidad Espacial***: Estima el espacio en memoria principal que necesita utilizar el algoritmo.


#### Tipos de Analisis de Algoritmos

Siempre escogeremos el peor caso!

- ***Analisis Empirico***: En el analisis empirico se calcula cuanto tiempo tarda un algoritmo en resolver un problema para distintos tamaños de entrada.
    Pasos para analizar:
    - Implementar el algoritmo.
    - Incluir instrucciones que permitan medir el tiempo de ejecucion.
    - Ejecutar el programa con entradas de diferentes tamaño y obtener los tiempos de ejecucion para cada tamaño.
    - Importa los resultados a un fichero(excel) y mostrarlos en un grafico (X Y dispersion).

    * ***Ventajas***: 
        - El proceso es sencillo (medir el tiempo para distintos tamaños de entrada).
        - Nos permite obtener graficas para razonar sobre el tiempo de ejecucion de un algoritmo.
        - Las graficas nos ayudan a comparar facilmente el tiempo de ejecucion de distintos algoritmos.
    
    * ***Desventajas***:
        - Se necesita implementar los Algoritmos
        - Mismo entorno (software + Hardware) para comparar algoritmos.
        - La grafica se construye sobre un conjunto finito de valores de n. Los resultados podrian no ser represantivos para todas las posibles entradas.

- ***Analisis Teorico***: 
    - Usa *Pseudocodigo* (No se implementan los algoritmos).
    - Consiste en obtener la **funcion temporal T(n)**, que representa el **numero de operaciones** que deben ser ejecutadas para una **entrada de tamaño n**.
    - Al ser una funcion, es posible considerar todas las posibles entradas(tamaños).
    - Como se miden en tiempo de ejecucion, es independiente del entorno Software/Hardware.


- Como contamos operaciones / instrucciones en un algoritmo?
En cualquier algoritmo, nos podemos encontrar con los siguientes tipos de operaciones:
    * **Operaciones Primitivas**: Este tipo de operaciones se van a contabilizar como una operacion.
        Ejemplos: 
        - Asignar valor a una variable -> x = 2
        - Indexar un elemento en un array -> vecor[5]
        - Devolver un valor en una funcion -> return x
        - evaluar una expresion aritmetica -> x + 5
        - Evluar una expresion logica ->   0 < i < 10

        ```python
        def sumar_dos_elementos(vector: list[int], i: int = 3, j: int = 5)-> int:
            """En este caso podriamos ontar:
            - 1 operacion para acceder a vector[i]
            - 1 operacion para acceder a vector[j]
            - 1 operacion para la suma
            - 1 operacion para el return.
            * Es decir tendriamos en total 4 operaciones.
            """
            return vector[i] + vector[j]
        ```
    
    - *La funcion teporal de una operacion primitiva siempre tiene un valor constante, que no depende de n(el tamaño de entrada)*

        > T(n) = C ; C es una Constante para todo n.

    - Si nuestro algoritmo se compone de varios bloques (funiones, operaciones adicionales), su funcion T(n), sera la suma de las funciones T(n) de cada bloque.
        Ejemplo:
        * Tengo una funcion B1 que llama a otra funcion B2 y asi susesivamente entonces la funcion temporal eses un Algoritmo:
            > T(n) = T(B1) + T(B2) + ... + T(Bn)

    * **Operaciones Bucles (for / While)**: La funcion T(n) para un bucle se calcula como el numero de veces que se ejecuta el bucle (numero de iteraciones) por la funcion T(n) del bloque interno B.
    
    ```python
    # 0 al 99
    for x in range(100):
        B # Bloque interno B
    
    # Tambien puede ser 
    while condition:
        B # Bloque B
    
    # Para cualquiera de los dos casos
    T(n) loop = T(B) * numero de iteraciones.
    ```
    ejemplo:
    ```python
    for i in range(1, n+1):
        result = result + i
    
    # La funcion range(n+1) devuelve los siguientes valores: 1, 2, 3,..., n. 
    # por lo tanto, el numero de iteraciones sera n.

    # La funcion T(n) del bloque interno (result = result + i) es T(n) = 2

    # Por lo tanto la funcion T(n) = n * 2.
    
    # En este caso, la funcion temporal **si depende de n**.

    # ----------- Nuevo Ejercicio ---------------

    for i in range(n): # T(n) = n
        for i in range(n): # T(n) = n
            print(i*j)  # T(n) = 1 + 1 = 2

    # Su funcion temporal T(n) es:
        # T(n) = n * n * 2= 2 n^2
    
    # En palabras es: 2 de la instruccion que hay en el bucle interno, por el numero de iteraciones del bucle interno, por el numero de iteraciones del bucle externo.
    # ----------- Nuevo Ejercicio ---------------
    # Que Pasa en bucles anidados si cada bucle se ejecuta un numero distinto de veces ?
    for i in range(n1):
        for i in range(n2):
            print(i*j)
        
    # En este caso, vamos a definir n = max(n1, n2)
    # Podemos hacer la siguiente simplificacion
        # T(n) = n1*n2*2   <  n*n*2 = 2n^2 
    ```

    * **Operaciones Condicionales (if)**
        - **If-Else**: Solo uno de los bloques (B1, B2, ..., Bk) se ejecutara.
        ```bash
        if condition1:
            B1
        elif condition2:
            B2
            
            # ...
        else:
            Bk
        ```
        Siempre debemos ser pesimistas en el analisis algoritmico, y considerar el peor caso, es decir el bloque Bi con la mayor funcion temporal.

            T(n) if-else = max(T b1(n), T b2(n), ..., T bk(n))

        - Ejemplo:
        ```python
        if opcion == "inc":
            n = n+1     # B1, T B1(n) = 2

        elif opcion == "dec": 
            n = n-1     # B2, T B2(n) = 2

        elif opcion == "mostrar": 
            for i in range(1, n+1): # B3, T B3(n) = n * 1
                print(i)
        else:
            print("Error: Opcion!!) # B4, T B4(n) = 1
        
        # En este ejemplo, el bloque con la mayor funcion temporal es B3
        ```

> podriamos agregar Operaciones Primitivas, Bucles y Condicionales en una funcion y la funcion temporal T(n) seria la suma de las funciones temporales de cada bloque asumiendo que somos pesimistas para el analisis de algoritmos.


#### Cota Superior Asintotica (Big Oh)
- Supon que tienes dos algoritmos, A y B, con las siguientes funciones de tiempo:
    - T A(n) = 3n^3
    - T B(n) = 3n^3 + 2n^2 + 100n + 5

    * Que algoritmo es mas eficiente ?

- Dos funciones, f y g, son asintoticamente equivalentes cuando:
    el limite de F(n) divido G(n) cuando n tiende al infinito es igual a 1.
    ```bash
    lim F(n) / G(n) = 1
    n -> 00
    ```
- Tiempo de ejecucion depende :
    - De la maquina en la que se ejecuta el programa.
    - Del compilador utilizado para generar el programa.

- Para facilitar la comparacion de las funciones temporales, vamos a aproximar cada funcion temporal a una **cota superior (analisis asintotico)**

- Dadas dos funciones, F(n) y G(n), F(n) es de **orden superior** (G(n)) (o G(n) es **cota superior** de F(n)), si existen N0  > 0 y c > 0, se cumple:
    F(n) <= c * G(n), para todo n >= n0
    
    Ejemplo: 
    Imaginemos que tenemos T A(n) = 3n^3 es de **orden superior n^3** porque **existen n0=0, c=4**, tales que T A(n) <= c*n^3, para todo n >= n0.

    - T B(n) = 3n^3 + 2n^2 + 3n + 5 es de **orden superior n^3** porque existen n0=10, c=4, tales que T B(n) <= cn^3, para todo n >= n0.

* Como proponer una cota superior para una funcion T(n) ?
    - 1) Buscar el termino que crece mas rapido(termino de mayor grado).
    - 2) Eliminar su coeficiente.

    Ejemplo:
    Buscar un limite superior a la funcion T(n)
        - 1) Buscar el termino que crece mas rapido.
        - 2) Eliminar su coeficiente.
    
    - T A(n) = 3n^3    -> 3n^3 -> cota superior = n^3
    - T B(n) = 4n^5 + 6n^2 + 10 -> 4n^5 -> n^5

> La cota superior tambien se llama Big Oh

* ***Analisis del Mejor y Peor Caso***
- **Mejor Caso**: El caso que requiere el menor numero de operaciones.
- **Peor Caso**: EL caso que requiere el mayor numero de operaciones.

* Para analizar los algoritmos, siempre lo hareos en funcion de su peor caso.
    - De esta forma, garantizamos un limite superior para todas las funciones temporales del algoritmo. 

- **Caso Medio**: Representa el numero medio de operaciones para ser ejectadas.
    - Para conocer este numero medio, debemos tomar todas las posibles entradas y calcular sus numero de operaciones.
    - El analisis del caso medio no es facil de estimar en la mayoria de los casos.

## Funciones
Python soporta el paradigma de programacion *Funcional* que nos permite estructurar el codigo repetido en funciones.

Las partes de una funcion:
- ***Firma de la funcion***:
- ***Valor de Retorno***: 
- ***Nombre***
- ***Parametros***

```python
# Firma de una Funcion sin parametros y por defecto el valor de retorno es el vacio(None).
def hola_mundo():
    print("Hello World")

# Firma de una funcion con parametros y sin valor de retorno
def sumar(numero1, numero2):
    return numero1 + numero2

# Firma de una funcion con Parametros usando Type-Hints o Duck Typing
def multiplicar(numero1: int, numero2: int) -> int:
    return numero1 * numero2
    
# firma de una funcion con documentacion
def suma(a: int, b: int) -> int:
    """Aqui la documentacion
    """
    return a+b
```
### Scope de las Variables
Una variable en Python puede tener solo dos alcances:
- ***Scope Local***:
    Vive dentro de una funcion u Objeto.
    ```python
    def factorial(numero):
        """Iterativo, Todo algoritmo Recursivo se puede Escribir Recursivamente.
        """
        ### Variable Local
        resultado = 1
        for i in range(1, numero+1):
            resultado *= i
        return resultado
    
    class Punto():
        def __init__(self, x=0, y=0):
            self.x = x
            self.y = y

        def set_x_y(self, x, y):
            ### Aqui X y Y son variables locales 
            self.x = x
            self.y = y
    ```

- ***Scope Global***: Son variables que viven en todo el tiempo de ejecucion del programa.

    SOn variables que se pueden usar dentro del alcanze de otras variables locales

    - ***Ejemplo***
    ```python
    VARIABLE_GLOBAL = 100

    def funcion_algo():
        if VARIABLE_GLOBAL:
            print("Existe la variable Global")
            VARIABLE_GLOBAL = 10 # Error
            global VARIABLE_GLOBAL = 100 # Correcto

        def funcion_local():
            nonlocal variable_global

    print(VARIABLE_GLOBAL) # Existe

    def funcion():
        VARIABLE_LOCAL = 100 
    
    print(VARIABLE_LOCAL) # ERROR, no existe VARIABLE_LOCAL.

    ```

## Buenas Practicas de Programacion de Python (PEP).

### Ley
- El Codigo se lee mas de lo que se escribe!.

### PEP (Python Enhancement Proposals)
[Documentacion Oficial](peps.python.org)
- ***PEP8 (Guia de Estilo para codigo Python)***:
    Visitar: peps.python.org/pep-0008

- Asi on todos los PEPS 1, 2, 3, ...

## Paradigmas de Programacion
Python es un paradigma hibrido (Imperativo + funcional)

- ***Paradigma Imperativo*** (Comose hacen las cosas Paso a Paso):
    - Codigo Sphagetti(Nombre despectivo para codigo no modular)
    - Procedural / Estructurado
    - Orientado a Objetos

- ***Paradigma Declarativo(Que se debe hacer)***: 
    - Lenguaje para Base de Datos
    - Programacion logica
    - Programacion Funcional

### Conceptos de la Programacion Funcional

* **Funciones de Primera Clase(o tambien llamado Objetos de Primera Clase)**: son funciones que se pueden almacenar en variables, pasar como parametro y devolver funciones, sin ningun tratamiento adicional.

    * **Ejemplos**:
        - 1) Almacenar en Variables:
            ```python
            def sumar(num1: int, num2: int)-> int:
                return num1 +num2
            
            s = sumar
            resultado = s(4, 5) + s(5, 5)
            ```
        - 2) Una funcion como parametro y devolver una funcion:
            ```python
            def mitad(a, b):
                return (a + b) // 2 

            def algo(funcion, val1, val2):
                return funcion(val1, val2)

            print(algo(mitad, 4, 5))
            ```
* **Funcion de primer orden**: es cundo una funcion no recibe otras funciones como parametro.

* **Funciones de orden Superior**: Son funciones que reciben otras funciones como parametro.
    - **Envoltura de funciones en Python**: 
        - Algo interesante de las funciones en Python es que estas pueden ser asignadas a variables.
        
        - Las funciones pueden ser utiizadas como argumento de otras funciones.

        - Las funciones pueden retornar funciones.

        * ***Ejemplo***:
        - 1)
        ```python
        def suma(val1=0, val2=1):
            return val1 + val2
        
        def operacion(funcion, val1=0, val2=1):
            return funcion(val1, val2)
        
        funcion_suma = suma # Ffuncion_suma almacena la funcion suma
        # Nuestra funcion operacion puede ser utilizada para ejecutar operaciones aritmeticas o cualquier tipo de operacion que necesitemos.esta funcion actua como un wrapper.
        resultado = operacion(funcion_sum, 10, 20)
        print(resultado)
        ```

        - 2) 
        ```python
        # Esta funcion tiene la capacidad de crear nuevas funciones
        def crear_funcion(operador):
            if operador == '+':
                # Creamos una funcion
                def suma(val1=0, val2=0):
                    return val1 + val2

                return suma
            return None

        def operacion(funcion, val1=0, val2=0):
            return funcion(val1, val2)

        funcion_suma = crear_funcion('+')
        resultado = operacion(funcion_suma, 10, 20)
        print(resultado) 
        ```

    - **Funciones de Orden Superior en Python**: Python ofrece unas funciones hibridas de ambos paradigmas, muy versatiles para trabajar con grandes colecciones de datos, que son funciones de orden superior.

    Las funciones mas utilizadas de este tipo son:
        - *Map*
        - *Reduce*
        - *Filter*
        - *Zip*


- ***Funciones Lambda***: llamadas o conocidas como funciones anonimas porque en su firma no contiene un nombre.

    Son funciones que se ejecutan en tiempo de ejecucion, las cuales realizan una tarea en concreto, regularmente pequeña.

    - ***Sintaxis***: Firma de la funcion Lambda:
    ```python
    lambda argumentos: cuerpo_de_la_funcion
    ```

- ***Recursividad***: las funciones recursivas son aquellas funciones que se llaman al menos una vez a si mismas y tienen un caso base (condicion de corte o salida).

    Las tres leyes de la recursividad:
    - Un algoritmo recursivo debe llamarse a si mismo.
    - Un algoritmo recursivo debe tener al menos un **caso base**.
    - Un algoritmo recursivo debe tener al menos un **caso recursivo** (un caso complejo donde el problema se divide en subproblemas mas pequeños)

    * **Ejemplo**:
    - Implementar una funcion recursiva en python que halle el resultado de 2 ^ 10.
    - Para ustedes seria Multiplicar 5 * 10 por sumas sucesivas.
    
    Solucion:
    ```python
    def potencia(base: int, exponente: int)-> int:
        """Potencia Recursiva
        """
        # Caso Base o condicion de corte
        if exponente == 0:
            return 1
        #              Acerca al caso base
        return base * potencia(base, exponente -1 )
    ```

* **Tipos de Recursion**:
    - **Recusion Lineal***: Una llamada recursiva podria producir como maximo una nueva llamada recursiva.
        Ejemplo: Calcular la Suma de elementos de un array de enteros:
        ```python
        def suma_elementos(array: list[int]) -> int:
            n: int = len(array)

            if n == 0:
                return 0

            return suma_elem_rec(array, n)

        # Aqui esta la magia
        def suma_elem_rec(array: list[int], cantidad: int)-> int:
            # Caso Base
            if cantidad == 0:
                return 0
            posicion = cantidad -1

            return array[posicion] + suma_elem_rec(array[:posicion], cantidad - 1)

        ```
        * Invertir un array.
        * Buscar el indice de un elemento en un array ordenado con Busqueda Binaria?
        ```python
        def busqueda_binaria(array: list[int], dato: int)-> int:

            # Primero que debemos pensar es cual es nuestro caso Base
            inicio: int = 0
            fin: int = len(array) - 1
            return _bb_rec(array, inicio, fin, dato)
        
        def _bb_rec(array: list[int], inicio: int, fin: int, dato: int) -> int:
            # caso Base
            if inicio == fin:
                return -1 # El elemento no se encuentra
            # Division Entera al medio del array
            
            medio: int = (inicio + fin) // 2
            
            if medio == dato:
                return medio

            if array[medio] < dato:
                return _bb_rec(array, medio+1, fin, dato)
            
            return _bb_rec(array, inicio, medio-1, dato)

        ```

    - **Recursion Binaria**: Una llamda recursiva debe generar dos nuevas llamadas recursivas.
        - En alguno de los casos recursivos, se realizan dos llamadas recursivas.

        - Estudiara 2 ejemplos:
            - Fibonacci:
            ```python
            def fibonacci_rec(n: int)-> int:
                if n == 0:
                    return 0
                
                if n == 1:
                    return 1
                return fibonacci_rec(n-1) + fibonacci_rec(n-2)

            # Halla la Cota superior Asintotitica ?
            ```

                * Es una forma eficiente de calcular fibonacci de 50?
                No!!!, Este codigo es espectacularmente ineficiente: O(2^n)

            - Suma una lista de numeros usando recursion binaria?

            > Idea!!!, dividir en dos mitades, calcular la suma de la primera parte, calcular la suma de la segunda parte, y sumar estos resultados.

    - **Recursion Multiple**: Una llamada recursiva puede generar tres o mas llamadas recursivas.

* ***Iteracion y Recursion***:
Si se encadenan muchas llamadas recursivas, es posible que se produzca un desbordamiento de memoria, por ejemplo Calcular Fibonacci(n) para n > 100.

***Todo algoritmo recursivo puede expresarse como iterativo y viceversa***

> Lo Iterativo es Humano, Lo recursivo es divino!.

## Testing o Documentacion
Las pruebas de Software se clasifican segun su Objetivo (funcionales vs no funcionales), Nivel de Abstraccion y su metodologia de ejecucion.

### Nivel de Abstraccion
- ***Pruebas Unitarias(Unit Testing)***: Prueban el componente mas pequeño en aislamiento (funciones, clases(metodos)) 

- ***Pruebas de Integracion(Integration Testing)***: Comprueban la comunicacion entre dos o mas  modulos externos(APIs, Base de Datos).

- ***Pruebas E2E (End-to-end) (Vision del usuario final)***: Evaluan el sistema completo como un todo.

* ***Segun el conocimiento del Codigo (Caja)***:
    - ***Caja Negra(Black Box)***: El tester no conoce la arquitectura ni la estructura del codigo de software.

    - ***Caja Blanca(White Box)***: EL tester tiene acceso total al codigo fuente y la arquitectura.

    - ***Caja Gris(Gray Box)***: Conocimiento Parcial de la estructura interna.

### Testing segun su Objetivo
```python
class Objeto()
    atributo_clase = 10
    def metodos(self, *parametros, **kwargs):
        variable_instancia = parametros
        return "Que te importa"

```

#### Pruebas Funcionales

#### Pruebas NO Funcionales



## 

### Testing con Pytest

[Documentacion Oficial](docs.pytest.org)

Encontraremos ejemplos de como testear codigo Python:
```python
def inc(n):
    return n+1

def test_inc():
    assert inc(4) == 5
```

### Testing con Unitest
> Testear es Documentar y la Documentacion es Testing

