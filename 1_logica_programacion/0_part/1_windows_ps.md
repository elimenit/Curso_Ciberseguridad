# Entendiendo la Terminal: Navegación básica en entornos Linux y Windows
## ¿Qué es Windows?

**Respuesta:** Windows es un sistema operativo de software privativo desarrollado por **Microsoft**.

## ¿Qué es PowerShell?

**Respuesta:** PowerShell es una herramienta de Microsoft para automatizar tareas. Funciona como un intérprete de comandos y también como un lenguaje de scripting y programación orientado a la administración de sistemas.

---

# Windows (PowerShell)

### 🛡️ Status de Permisividad y Cambio (Políticas de Ejecución)
Comandos necesarios para configurar la ejecución de scripts de PowerShell en el sistema.

- **`Get-ExecutionPolicy`**:  Obtiene la política de ejecución actual del sistema.

- **`Set-ExecutionPolicy`**: Se utiliza para cambiar las políticas de ejecución.
  - **Ejemplo:** `Set-ExecutionPolicy RemoteSigned`
  - **Tipos de Políticas:**
    * `Restricted`: No se permite la ejecución de scripts (política por defecto en Windows).
    * `AllSigned`: Todos los scripts deben estar firmados digitalmente por un editor de confianza.
    * `RemoteSigned`: Los scripts locales se ejecutan sin firma, pero los descargados de ubicaciones remotas (internet) deben estar firmados.
    * `Unrestricted`: Sin restricciones (se permite la ejecución de cualquier script, aunque puede pedir confirmación).

- **`Get-ChildItem`** (Alias: `ls`, `dir`): Muestra los archivos y carpetas del directorio actual.

- **`Set-Location`** (Alias: `cd`): Cambia de directorio (carpeta).
  * **Ejemplo:** `Set-Location C:\Users`

- **`Get-Location`** (Alias: `pwd`): Muestra la ruta de la carpeta actual en la que estás.

- **`Copy-Item`** (Alias: `cp`, `copy`): Copia un archivo o carpeta.
  * **Ejemplo:** `Copy-Item archivo.txt copia.txt`

- **`Move-Item`** (Alias: `mv`, `move`): Mueve o cambia de nombre un archivo o carpeta.

- **`Remove-Item`** (Alias: `rm`, `del`): Elimina un archivo o carpeta.
  * **Ejemplo:** `Remove-Item archivo.txt`

- **`New-Item`**: Crea un nuevo archivo o carpeta.
  * **Ejemplo:** `New-Item -ItemType Directory -Name "NuevaCarpeta"`

- **`Get-Content`**: Muestra el contenido de un archivo.
  * *-Head 10*: Muestra las 10 primeras lineas.
  * *-Tail 10*: Ultimas 10 lineas.

- **Out-Host**: Muestra la salida en la linea de comandos.
  * *-Paging*: Pagina la visualizacion.
- **`Get-Process`** (Alias: `ps`): Muestra todos los procesos que se están ejecutando en el equipo.

- **`Stop-Process`** (Alias: `kill`): Detiene un proceso en ejecución por su ID o nombre.
  * **Ejemplo:** `Stop-Process -Name notepad`

- **`Get-Service`**: Muestra el estado de los servicios de Windows.

- **`Get-ComputerInfo`**: Proporciona información detallada sobre el sistema operativo y el hardware.

- **`Test-Connection`**: Funciona igual que el comando *ping* tradicional para comprobar la conectividad.
  * **Ejemplo:** `Test-Connection google.com`

* **`Get-NetIPAddress`**: Muestra las direcciones IP configuradas en tu equipo.

* **`Invoke-WebRequest`** (Alias: `iwr`): Permite descargar contenido web o realizar peticiones HTTP.
  * **Ejemplo:** `Invoke-WebRequest -Uri "https://ejemplo.com" -OutFile "archivo.html"`

* **`Get-Help`**: Muestra la ayuda y documentación de cualquier comando.
  * **Ejemplo:** `Get-Help Get-Process`

* **`Get-Command`**: Busca comandos disponibles según un patrón o categoría.

* **`Clear-Host`** (Alias: `cls`): Limpia la pantalla de la consola.