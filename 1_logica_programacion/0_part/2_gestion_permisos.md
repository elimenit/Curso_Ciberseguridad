# 🔐 Gestión de Permisos: Usuarios, Grupos y Privilegios
## (Lectura, Escritura y Ejecución)

Generalmente intentaremos realizar las siguientes acciones:

- 📖 **Obtener o Leer**
- ➕ **Crear o Agregar**
- ✏️ **Editar, Modificar o Actualizar**
- 🗑️ **Eliminar o Remover**

---

# Windows (PowerShell)

## 👤 Usuarios

### Crear Usuario

```powershell
$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force
New-LocalUser -Name "AnaLopez" -Password $Password -FullName "Ana Lopez" -Description "Ventas"
```

### Obtener Usuarios

```powershell
# Ver todos los usuarios
Get-LocalUser

# Ver detalles específicos de un usuario
Get-LocalUser -Name "AnaLopez" | Select-Object Name, Enabled, Description, LastLogon
```

### Editar Usuario

```powershell
# Actualizar la descripción
Set-LocalUser -Name "AnaLopez" -Description "Directora de Ventas"

# Renombrar
Rename-LocalUser -Name "AnaLopez" -NewName "ALopez"
```

### Deshabilitar un Usuario

```powershell
Disable-LocalUser -Name "JuanPerez"
```

### Habilitar Usuario

```powershell
Enable-LocalUser -Name "ALopez"
```

### Eliminar Usuario

```powershell
Remove-LocalUser -Name "JuanPerez"
```

---

## 👥 Grupos

### Crear Grupo

```powershell
New-LocalGroup -Name "Directivos" -Description "Grupo de alta gerencia"
```

### Obtener Grupo

```powershell
# Ver todos los grupos
Get-LocalGroup

# Obtener solo los miembros de un grupo específico
Get-LocalGroupMember -Group "Directivos"
```

### Editar Grupo

```powershell
# Actualizar la descripción del grupo
Set-LocalGroup -Name "Directivos" -Description "Acceso confidencial"

# Agregar un miembro al grupo
Add-LocalGroupMember -Group "Directivos" -Member "JuanPerez"

# Quitar un miembro del grupo (Actualización parcial de la membresía)
Remove-LocalGroupMember -Group "Directivos" -Member "JuanPerez"
```

### Eliminar Grupo

```powershell
Remove-LocalGroup -Name "Directivos"
```

---

## 🔒 Privilegios (Read, Write, Execute)

### Obtener

```powershell
# Obtener la lista completa de reglas
(Get-Acl -Path "C:\DatosEmpresa").Access |
Format-Table IdentityReference, FileSystemRights, AccessControlType
```

### Crear o Agregar

```powershell
$Ruta = "C:\DatosEmpresa"
$Acl = Get-Acl -Path $Ruta

# Crear la regla (Permiso de Lectura para AnaLopez)
$Regla = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "ReadAndExecute",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Agregar la regla (suma este permiso a los existentes)
$Acl.AddAccessRule($Regla)
Set-Acl -Path $Ruta -AclObject $Acl
```

### Editar / Actualización Parcial

```powershell
$Acl = Get-Acl -Path $Ruta

# Crear la nueva regla con el permiso modificado (Control Total)
$NuevaRegla = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "FullControl",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Establecer la regla (Sobrescribe los permisos anteriores de ALopez)
$Acl.SetAccessRule($NuevaRegla)
Set-Acl -Path $Ruta -AclObject $Acl
```

### Eliminar

```powershell
$Acl = Get-Acl -Path $Ruta

# Debes declarar exactamente la regla que quieres eliminar
$ReglaAEliminar = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "FullControl",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Remover la regla
$Acl.RemoveAccessRule($ReglaAEliminar)
Set-Acl -Path $Ruta -AclObject $Acl
```

---

# Linux (Bash)

La gestión de permisos y usuarios en Linux se basa en un modelo de seguridad robusto donde cada archivo y directorio pertenece a un usuario y a un grupo específico.

## 👁️ Visualización de Permisos

Para ver los permisos actuales de los archivos y directorios utilizamos el comando `ls` con el modificador `-l` (formato largo).

```bash
ls -l
```

---

## 👤 Usuarios

### Crear Usuario

El comando estándar es `useradd`.

```bash
sudo useradd -m -s /bin/bash nuevo_usuario
sudo passwd nuevo_usuario
```

### Cambiar Usuario

> **Nota:** El guion (`-`) indica que se debe cargar el entorno completo (variables de entorno, archivo `.bashrc` y directorio `home`) del nuevo usuario.

```bash
su - nombre_de_usuario || sudo -i -u nombre_de_usuario
```

### Ver todos los Usuarios

```bash
cut -d: -f1 /etc/passwd
```

### Editar Usuario

```bash
sudo usermod -aG nombre_grupo nombre_usuario
```

### Eliminar Usuario

```bash
sudo userdel -r usuario_a_borrar
```

---

## 👥 Grupos

### Crear Grupo

```bash
sudo groupadd nombre_grupo
```

### Obtener nombres de los Grupos

```bash
cut -d: -f1 /etc/group
```

### Editar Grupo

```bash
sudo groupmod -n nuevo_nombre_grupo viejo_nombre
```

### Eliminar Grupo

```bash
sudo groupdel nombre_grupo
```

---

## 🔒 Privilegios o Permisos (Read, Write, Execute)

Para la actualización de permisos utilizaremos el comando:

```bash
chmod
```

Tiene dos formas de implementación:

### Modo Simbólico

```bash
chmod u=rwx,g=rwx,o=rwx script.sh
```

### Modo Octal

```bash
chmod 777 script.sh
```# 🔐 Gestión de Permisos: Usuarios, Grupos y Privilegios
## (Lectura, Escritura y Ejecución)

Generalmente intentaremos realizar las siguientes acciones:

- 📖 **Obtener o Leer**
- ➕ **Crear o Agregar**
- ✏️ **Editar, Modificar o Actualizar**
- 🗑️ **Eliminar o Remover**

---

# Windows (PowerShell)

## 👤 Usuarios

### Crear Usuario

```powershell
$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force
New-LocalUser -Name "AnaLopez" -Password $Password -FullName "Ana Lopez" -Description "Ventas"
```

### Obtener Usuarios

```powershell
# Ver todos los usuarios
Get-LocalUser

# Ver detalles específicos de un usuario
Get-LocalUser -Name "AnaLopez" | Select-Object Name, Enabled, Description, LastLogon
```

### Editar Usuario

```powershell
# Actualizar la descripción
Set-LocalUser -Name "AnaLopez" -Description "Directora de Ventas"

# Renombrar
Rename-LocalUser -Name "AnaLopez" -NewName "ALopez"
```

### Deshabilitar un Usuario

```powershell
Disable-LocalUser -Name "JuanPerez"
```

### Habilitar Usuario

```powershell
Enable-LocalUser -Name "ALopez"
```

### Eliminar Usuario

```powershell
Remove-LocalUser -Name "JuanPerez"
```

---

## 👥 Grupos

### Crear Grupo

```powershell
New-LocalGroup -Name "Directivos" -Description "Grupo de alta gerencia"
```

### Obtener Grupo

```powershell
# Ver todos los grupos
Get-LocalGroup

# Obtener solo los miembros de un grupo específico
Get-LocalGroupMember -Group "Directivos"
```

### Editar Grupo

```powershell
# Actualizar la descripción del grupo
Set-LocalGroup -Name "Directivos" -Description "Acceso confidencial"

# Agregar un miembro al grupo
Add-LocalGroupMember -Group "Directivos" -Member "JuanPerez"

# Quitar un miembro del grupo (Actualización parcial de la membresía)
Remove-LocalGroupMember -Group "Directivos" -Member "JuanPerez"
```

### Eliminar Grupo

```powershell
Remove-LocalGroup -Name "Directivos"
```

---

## 🔒 Privilegios (Read, Write, Execute)

### Obtener

```powershell
# Obtener la lista completa de reglas
(Get-Acl -Path "C:\DatosEmpresa").Access |
Format-Table IdentityReference, FileSystemRights, AccessControlType
```

### Crear o Agregar

```powershell
$Ruta = "C:\DatosEmpresa"
$Acl = Get-Acl -Path $Ruta

# Crear la regla (Permiso de Lectura para AnaLopez)
$Regla = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "ReadAndExecute",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Agregar la regla (suma este permiso a los existentes)
$Acl.AddAccessRule($Regla)
Set-Acl -Path $Ruta -AclObject $Acl
```

### Editar / Actualización Parcial

```powershell
$Acl = Get-Acl -Path $Ruta

# Crear la nueva regla con el permiso modificado (Control Total)
$NuevaRegla = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "FullControl",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Establecer la regla (Sobrescribe los permisos anteriores de ALopez)
$Acl.SetAccessRule($NuevaRegla)
Set-Acl -Path $Ruta -AclObject $Acl
```

### Eliminar

```powershell
$Acl = Get-Acl -Path $Ruta

# Debes declarar exactamente la regla que quieres eliminar
$ReglaAEliminar = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "ALopez",
    "FullControl",
    "ContainerInherit, ObjectInherit",
    "None",
    "Allow"
)

# Remover la regla
$Acl.RemoveAccessRule($ReglaAEliminar)
Set-Acl -Path $Ruta -AclObject $Acl
```

---

# Linux (Bash)

La gestión de permisos y usuarios en Linux se basa en un modelo de seguridad robusto donde cada archivo y directorio pertenece a un usuario y a un grupo específico.

## 👁️ Visualización de Permisos

Para ver los permisos actuales de los archivos y directorios utilizamos el comando `ls` con el modificador `-l` (formato largo).

```bash
ls -l
```

---

## 👤 Usuarios

### Crear Usuario

El comando estándar es `useradd`.

```bash
sudo useradd -m -s /bin/bash nuevo_usuario
sudo passwd nuevo_usuario
```

### Cambiar Usuario

> **Nota:** El guion (`-`) indica que se debe cargar el entorno completo (variables de entorno, archivo `.bashrc` y directorio `home`) del nuevo usuario.

```bash
su - nombre_de_usuario || sudo -i -u nombre_de_usuario
```

### Ver todos los Usuarios

```bash
cut -d: -f1 /etc/passwd
```

### Editar Usuario

```bash
sudo usermod -aG nombre_grupo nombre_usuario
```

### Eliminar Usuario

```bash
sudo userdel -r usuario_a_borrar
```

---

## 👥 Grupos

### Crear Grupo

```bash
sudo groupadd nombre_grupo
```

### Obtener nombres de los Grupos

```bash
cut -d: -f1 /etc/group
```

### Editar Grupo

```bash
sudo groupmod -n nuevo_nombre_grupo viejo_nombre
```

### Eliminar Grupo

```bash
sudo groupdel nombre_grupo
```

---

## 🔒 Privilegios o Permisos (Read, Write, Execute)

Para la actualización de permisos utilizaremos el comando:

```bash
chmod
```

Tiene dos formas de implementación:

### Modo Simbólico

```bash
chmod u=rwx,g=rwx,o=rwx script.sh
```

### Modo Octal

```bash
chmod 777 script.sh
```