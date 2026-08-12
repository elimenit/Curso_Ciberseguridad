# Entendiendo la Terminal: Navegación básica en entornos Linux y Windows

## ¿Qué es Linux?

**Respuesta:** Linux es un sistema operativo libre y de código abierto creado por **Linus Torvalds** en 1991.

## ¿Qué es un script?

**Respuesta:** Un script es un conjunto de instrucciones o comandos almacenados en un archivo que pueden ejecutarse de forma automática.

## ¿Qué es una terminal (Shell)?

**Respuesta:** Una terminal o *shell* es una interfaz que permite a un usuario o a un programa acceder a los servicios del sistema operativo mediante comandos.

## ¿Qué es Bash?

**Respuesta:** Bash (*Bourne Again SHell*) es un intérprete de comandos y un lenguaje de scripting utilizado para automatizar tareas en sistemas Linux y Unix.

## ¿Bash es un lenguaje de programación?

**Respuesta:** No. Bash no es un lenguaje de programación de propósito general, sino un **lenguaje de scripting de comandos** (*Command Language*) orientado a la automatización y administración del sistema.


---

# Linux (Bash)

## Comandos básicos de Bash

### `pwd` (Print Working Directory)

Muestra la ruta del directorio de trabajo actual.

**Opciones:**

- `-P`: Muestra la ruta física real resolviendo enlaces simbólicos (*symlinks*).

---

### `ls`

Lista archivos y directorios.

**Opciones:**

- `-l`: Lista en formato largo.
- `-a`: Muestra archivos y directorios ocultos.
- `-h`: Muestra los tamaños en un formato legible para humanos.
- `-lt`: Ordena por fecha de modificación y muestra la marca de tiempo detallada.
- `-R`: Lista el contenido de los directorios de forma recursiva.

---

### `cd`

Permite cambiar o acceder a otro directorio.

**Sintaxis:**

```bash
cd <directorio>
```

---

### `tree`

Muestra la estructura jerárquica de directorios y archivos.

**Opciones:**

- `-a`: Incluye archivos ocultos.
- `-L <nivel>`: Limita la profundidad del árbol de directorios.
- `-P <patrón>`: Muestra únicamente los archivos que coincidan con el patrón indicado.
- `-h`: Muestra los tamaños en formato legible.
- `-d`: Lista únicamente directorios.
- `-p`: Muestra los permisos de cada archivo y directorio.
- `-u`: Muestra el usuario propietario.
- `-g`: Muestra el grupo propietario.

**Ejemplo:**

```bash
tree -a -L 2
```
## Comandos de búsqueda y análisis

### `find <ruta>`

Busca archivos y directorios a partir de una ruta determinada.

**Opciones:**

- `-name <patrón>`: Busca archivos o directorios cuyo nombre coincida con el patrón especificado.
- `-type <tipo>`: Filtra los resultados por tipo de archivo o directorio.
- `-perm <permiso>`: Localiza archivos con permisos específicos.
- `-writable`: Encuentra archivos y directorios donde el usuario actual tiene permisos de escritura.
- `-readable`: Encuentra archivos y directorios donde el usuario actual tiene permisos de lectura.

**Ejemplo:**

```bash
find /var/log -mmin -60
```

Muestra los archivos ubicados en `/var/log` que fueron modificados durante los últimos 60 minutos.

---

### `grep`

Busca patrones de texto dentro de uno o varios archivos.

**Opciones:**

- `-n`: Muestra el número de línea junto con cada coincidencia.
- `-i`: Ignora diferencias entre mayúsculas y minúsculas.

---

### `cat`

Muestra el contenido de uno o varios archivos por la salida estándar (`stdout`).

**Opciones:**

- `-A`: Muestra caracteres no imprimibles, tabulaciones y finales de línea (`$`, `^M`). Es útil para detectar caracteres invisibles o finales de línea tipo Windows (CRLF).
- `-n`: Numera todas las líneas del archivo.

---

### `tail`

Muestra las últimas 10 líneas de un archivo.

**Opciones:**

- `-f`: Monitorea el archivo en tiempo real. Muy útil para revisar registros (*logs*) como `/var/log/auth.log` o `access.log`.
- `-n <número>`: Especifica cuántas líneas finales se desean mostrar.

---

### `file`

Determina el tipo de un archivo.

**Opciones:**

- `-b`: Muestra únicamente el tipo de archivo, sin incluir su nombre.
- `-i`: Muestra el tipo MIME oficial del archivo.

---

### `stat`

Muestra información detallada de los metadatos de un archivo.

Entre los datos mostrados se encuentran las marcas de tiempo **MACB**:

- **Access (A):** Último acceso.
- **Modify (M):** Última modificación del contenido.
- **Change (C):** Último cambio en los metadatos.
- **Birth (B):** Fecha de creación (cuando el sistema de archivos la soporta).

---

### `strings`

Extrae las secuencias de caracteres imprimibles contenidas en un archivo.

**Opciones:**

- `-n <N>`: Extrae únicamente cadenas con una longitud mínima de `N` caracteres. Es útil para analizar binarios, *payloads* o volcados de memoria.

**Ejemplo:**

```bash
strings -n 8 /bin/malware
```

Puede revelar URLs, direcciones IP, rutas internas de compilación u otros datos útiles durante un análisis.

---

### `id` / `whoami`

Muestran información sobre el usuario actual.

**Opciones:**

- `-a`: Muestra el UID, GID y todos los grupos a los que pertenece el usuario.

---

### `sudo`

Ejecuta comandos con privilegios de superusuario.

**Opciones:**

- `-l`: Lista los permisos asignados al usuario en el archivo `/etc/sudoers`. Permite conocer qué comandos pueden ejecutarse con privilegios elevados.

---

# Redes y procesos

## `ps`

Muestra una instantánea de los procesos en ejecución.

**Opciones:**

- `auxf`: Presenta los procesos en forma de árbol, mostrando usuarios, consumo de recursos y relaciones entre procesos. Resulta útil para detectar procesos sospechosos o subprocesos anómalos.

---

## `ss`

Herramienta para inspeccionar sockets y conexiones de red.

**Opciones:**

- `-tulpn`: Muestra sockets TCP (`t`) y UDP (`u`) en estado de escucha (`l`), utilizando números de puerto (`n`) e indicando el proceso y PID asociados (`p`).

Es especialmente útil para detectar servicios activos, *reverse shells* o puertos abiertos inesperadamente.

---

## `lsof` (List Open Files)

Lista los archivos abiertos por el sistema o por un proceso.

> En muchas ocasiones requiere ejecutarse con `sudo`.

**Opciones:**

- `-i`: Muestra todas las conexiones de red activas.
- `-p <PID>`: Lista todos los archivos abiertos por un proceso específico, incluyendo sockets, archivos temporales y bibliotecas cargadas.

---

## `ss` (uso detallado)

Opciones comunes de `ss`:

- `-t`: Muestra únicamente conexiones TCP.
- `-u`: Muestra únicamente conexiones UDP.
- `-l`: Muestra únicamente sockets en estado de escucha (*Listening*).
- `-a`: Muestra tanto conexiones activas como sockets en escucha.
- `-p`: Indica el proceso y el PID asociado a cada conexión.
- `-s`: Presenta un resumen estadístico de los sockets.
- *(Sin opciones)*: Muestra todas las conexiones activas del sistema.

---
--- 
## Editores de terminal Integrados en Linux1
# Vim (vi)
* **Ejemplo**: 
```bash
vi archivo.txt || vim archivo.txt
```

## Modos de Operacion
- **Modo Normal**: Es el modo en el que entras por defecto. Sirve para navegar, copiar, pegar y ejecutar comandos (como guardar o salir). No puedes escribir texto directamente aquí.
    - *Tecla **ESC***: Modo Normal
- **Modo Insertar**: Es el modo en el que realmente puedes escribir y editar el contenido del texto.
    - *Tecla **i***: Modo de insercion

## Comandos en Modo Normal
- **:w** (Guarda sin Salir)
- **:wq** o **ZZ** (Guardar y Salir)
- **:q!** (Salir sin Guardar)

### Edicion y Navegacion
- **yy**: Copia la linea completa en el portapapeles.
- **dd**: borra la linea completa.
- **p**: Pegar.
- **u**: Deshacer.

### Busqueda y Navegacion Basica
- **/texto**: Busca la Palabra "texto" en el archivo (Pulsa **n** para ir a la siguiente coincidencia).
- **gg**: Ir al inicio.
- **G**: Ir al final.

## Comandos en Modo Insercion
Aqui solo se escribe y borra.

# Nano 
* **Ejemplo**: 
```bash
nano archivo.txt
```
## Atajos de teclado
### Comandos Basicos
- CTRL + O (Guardar, WriteOut): Guarda los cambios realizados en el archivo actual (Solicita confirmacion o acuse de recibo).
- CTRL + X (Salir, Exit): Salir del archivo (Solicita confirmacio si no esta vacio).
- CTRL + G (Ayuda, Help): Abre el manual de ayuda integrado con todos los teclados.
- CTRL + W (Buscar, Where Is): Permite buscar una palabra o texto dentro del documento.
- CTRL + K (Cortar Linea, Cut): Corta (elimina) la línea actual y la guarda en el portapapeles.
- CTRL + U (Pegar, Uncut): Pega la línea o texto que previamente cortaste con Ctrl + K.
- CTRL + C (Posicion del Cursor): Muestra información de la posición actual del cursor (línea, columna, carácter).

### Atajos de Edicion y Navegacion

- Ctrl + A: Mueve el cursor al inicio de la línea actual.

- Ctrl + E: Mueve el cursor al final de la línea actual.

- Ctrl + Y (o Re Pág): Retrocede una página completa.

- Ctrl + V (o Av Pág): Avanza una página completa.
---