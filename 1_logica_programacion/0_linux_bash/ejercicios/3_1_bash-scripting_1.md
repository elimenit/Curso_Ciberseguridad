# Ejercicios, Bash Scripting I (Procesos, if, bucles y archivos y directorios)
- Que es una variable de entorno, crea y elimina una.
- Que es una variable de ambiente, crea y elimina una?
- Cual es la diferencia entre una variable de ambiente y de entorno?
- Que es un programa
- Que es un Proceso
- Que es una disjuncion (inclusiva, exclusiva), conjuncion, condicional(necesario, suficiente, bicondicional).

## Procesos
- Crea un proceso y eliminalo del background del sistema Operativo(ps aux)
- Filtra con grep||awk que procesos del sistema corren como root

## Condicionales 
- **Variables de Entorno y Ambiente**
    * verificar si la variable de entorno USER existe entonces imprimir el mensaje '$USER existe'
    * Crea un script en bash que las funciones usen esa variable sin pasar como parametro de la funcion pero que la variable deje de existir cuando finalize el programa.

- **Strings**
    * Verificar si una cadena esta vacia.
    * verificar si dos cadenas son iguales.
    * verificar si dos numeros son iguales.

- **Procesos**
    * Crea un Script que corra un proceso en segundo plano y despues de 10 segundos matarlo.

- **Condicionales**
    * Desarrolla un Script que compruebe la edad de carlos pasado como parametro (./script.sh 18).
    * Desarrollar un script que compruebe si dos archivos contienen el mismo contenido.
    * Comprobar si existe al menos un archivo con extension que igres el usuario.
    * implementar la siguiente funcion que comprueba el caso del numero para que funcione:
    ```bash
    mostrar_numero() {
        numero=$1
        case ($numero); do
            # Implementar
        esac
    }
    ```
- **Bucle For**
    * Imprima los 100 primeros numeros.
    * Desarrolle un arreglo con 5 elementos y imprima uno por uno a la vez.

- **Bucle While/Until**
    * Desarrolle un programa que le solicite al usuario mientras el numero ingresado sea distinto de 0.
