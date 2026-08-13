#!/bin/bash
### ------------------ Cadenas de Texto -----------------------####
string="Cadena"
echo $cadena

# Modificacion
string="Nueva Cadena"
echo $cadena

# Eliminacion
unset cadena
echo $cadena

### -------------------- Enteros -------------------------###
declare -i numero=5
# Acceso
echo $numero

# Modificacion
((numero+=1))
echo $numero

((numero*=4))
echo $numero

let numero/=4
echo $numero

let numero-=1
echo $numero

# Eliminacion
unset numero
echo $numero

###------------------------------ Arrays --------------------------------###
declare -a array=(1 2 3 4 5 6 "Siete")

# Acceso
echo ${array[1]}

# Modificacion
array[1]=100
echo ${array[1]}

# Eliminacion
unset array[1]
echo ${array[1]}

###---------------------------- Mapas --------------------------------------###
declare -A mapa 
# Asignacion
mapa["clave"]="valor"
mapa["key"]="value"
mapa[1]=2

# Acceso
## Un valor
echo ${mapa["clave"]}
## todos los valores
echo ${mapa[@]}
## todas las claves
echo ${!mapa[@]}

####################--------------------- END ---------------------------###########################