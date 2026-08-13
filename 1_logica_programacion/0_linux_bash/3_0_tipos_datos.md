# Tipos de Datos en Bash y Sintaxis
Bash es un lenguaje sin tipos (Untyped): para Bash todo es una cadena de texto(String).
Segun el contexto o como se declaren, el Shell puede interpretarlos como diferentes estructuras.

## Cadenas de Texto (String)
- ***Sintaxys***:
```bash
cadena="Valor"
```
- ***Operadores de comparacion***: '==', '!=', -z(Si esta Vacia), -n (si tiene contenido).
- ***manipulacion***: 
```bash
${cadena:inicio:longitud}
```
- Ejemplos:
```bash
#!/bin/bash <- Shebang
# Siempre
cadena="Cadena"

# Acceso
echo $cadena

# Asignacion
cadena="Nueva Cadena"

# Eliminacion
unset cadena
```
## Numeros Enteros (Integer)
Bash no tiene Integer de forma Ntiva, pero permite realizar aritmetica de enteros de 64 bits.

- ***Declaracion Explicita***: 
```bash
declare -i entero=5
```
- ***Operadores***: 
    - Cuando usamos (()): +, -, *, /, %(Modulo), **(Exponenciacion)
    - Cuando usamos [[]], []: -eq (igual), -ne (no igual), -gt (mayor que), -ge (mayor o igual que), -lt (Menor que), -le (Menor o igual que).

- ***Asignar o Modificar***:
```bash
let entero=4
((entero++))
```
- ***Ejemplo***:
```bash
#!/bin/bash <- Shebang
# Asignacion
declare -i numero=5

# Acceso
echo $numero

# Modificacion (Forma 1)
((numero+=1))
((numero*=4))
((numero-=2))

# Modificacion (Recomendada)
let entero*=1
let entero /=4
let entero-=1

# Eliminacion
unset numero
```
## Arrays o Arreglos Indexados

Coleccion de datos ordenados por un indice (Empezando en 0)

- ***Declaracion Explicita***:
```bash
declare -a array=("uno" "dos" "tres")

- ***Acceso***: 
```bash
letra=${array[1]}
```

- ***Operadores***: 
    - *+=(e l)*: Agrega al elemento e y l.
    - ${array[@]}: Longitud.

## Arreglos Asociativos (Dicionarios/Mapas/Hashes)
Disponible a partir de bash 4. Permite usar strings como claves(Keys) en lugar de numeros.

- ***Declaracion Obligatoria***: 
```bash
declare -A mapa
```
- ***Asignacion(Agregar, Editar)***: 
```
clave="Key"
mapa[$clave]="Valor"
```
- ***Acceso***:
```bash
declare -A mapa
# Una clave
clave=${mapa[clave]}
# Todas las claves
claves=${!mapa[@]}
# Un Valor
valor=
# Todos los Valores
valores=${mapa[@]}
# Eliminar Clave-Valor
unset mapa[clave]
```