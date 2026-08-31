# Bash Scripting I: Procesos, Condicionales, Bucles, Directorio y archivos.
## Que tipo de variables existen en Bash?

Existen dos tipos de Variables:
- ***Variables de entorno***: Es una variable del Sistema Operativo(.bashrc).
    * **Podemos crear alias a otros comandos desde aqui por ejemplo:
    ```bash
    echo "alias 'ayd'='ls -la'" >> ~/.bashrc 
    source ~/.bashrc # Actualizamos las variables del entorno del sistema.
    ```
- ***Variables de Ambiente***: Es una variable que vive durante la ejecuion de un programa(Proceso) y tiene una caracteristica de herencia que deja de existir cuando el proceso muere.
    ```bash
    export variable="Value"
    ```

## Que es un Programa 
Es un conjunto de instruciones que el Sistema Operativo interpreta.

## Que es un Proceso
Es la ejecucion de un programa y tiene asignado un PID, etc.

### Partes de un Proceso
- ***PID(Process ID)***: Identificador unico del proceso, Varios PID pueden tener el mismo PPID.
- ***PPID(Principal Process ID)***: Identficador del programa principal.

* ***Ejemplo***: 
Obtener EL PID de un Programa
```bash
### PS
# Generamos un proceso en segundo plano
nano > /dev/null &
# Analizamos los procesos asociados
ps aux | grep "nano"
# Obtenemos PIDs de los proesos asociados
ps aux | awk '/nano/ {print $2}'

### PSTREE
nano > /dev/null &
pstree -p | grep "nano"
pstree -p | awk  '/nano/ {printf $NF}'

### PGREP
pgrep 'nano'

### Top comando superior (muestra todos los proesos en ejecucion)
# Proporcion los resultados en tiempo real (Recomendado)
top -n1 -b | grep 'nano'
top -n1 -b | awk '/nano/ {print $1}'
```
Eliminar un proceso
```bash
### kill (Toma el PID de un programa y lo manda a dormir)
# Señales disponibles que se puede enviar a un programa
kill -l
# Ofrece 64 señales (nos interesa 2)
# señal 9 (SIGKILL) fuerza la finalizacion de un proceso
# señal 15 (SIGTERM) es el metodo mas seguro para eliminar un proceso
kill -9 <PID> || kill -KILL <PID> # Equivalentes
kill -15 <PID> || kill -TERM <PID> # Equivalentes

### PKILL (Elimina por nombre, PID, Grupo, Propietario y otros atributos)
### Si elcomndo falla USEN KILL o man kill || pkill --help
pkill nano 
pkill <PID>
pkill -e nano
pkill -f nano
```

## Condicionales y Bucles en Bash
Las sentencias que encontramos en bash es if, elif, else, case, for, while y until que sigen una estructura definida.

Usar un condicional si en la oracion existe expresiones condicionales (si, solo si, O si, si y solo si, siempre,...), conjunciones y disjunciones.

*Usar un bucle For cuando sabemos cuantas iteraciones debemos dar.*

*Usar un bucle While cuando no sabemos cuando dejar de iterar.*

La sintaxis es casi igual para todos los casos.

* ***Ejemplos***:
```bash
### IF
# Comprobar si un archivo existe.
# No es obligatorio usar doble corchetes, pero durante el curso sera el estandar de Bash.
path="$HOME/Curso_Ciberseguridad"
if [[ -f $path ]]; then
    echo "El archivo $path existe"
elif [[ -d $path ]]; then
    echo "la ruta $path es un directorio"
else 
    echo "No es un directorio ni un archivo"
fi
### CASE
declare -i EDAD=5
case $EDAD in 
    1)
        echo "EDAD es 1"
    2)
        echo "EDAD es 2"
    "string")
        echo "EDAD es un String"
    *)
        echo "EDAD vale cualquier otra cosa"
esac

### FOR 
# numeros
for (( i=0; i< 10; i++ )); do
    echo $i
done
seq 2 10 # imprime desde el 2 al numero 10 (inclusive)

declare -a array=('uno' 'dos' 'tres')
for elemento in ${array[@]}; do 
    echo $elemento
done
### WHILE && UNTIL
## Solicitar al usuario un numero y que finalize cuando sea el numero 0
declare -i numero=1
while [[ $numero -ne 0 ]]; do 
    read -p "Ingrese un numero diferente a cero: " numero
done

until [[ $numero -eq 0 ]]; do 
    read -p "Escriba un numero distinto a cero: " numero
done
```

### Entrada y Salida del Usuario

Para capturar las teclas del usuario usaremos el comando *read* y para la salida usaremos *echo*
Ejemplo:

```bash
read -p "Escribe un numero: " numero # Entrada
echo "El numero es: $numero" #Salida
```
