# Metasploit
Es un proyecto de codigo abierto para seguridad informatica.

## Para que se usa Metasploit ?
- Explotacion de Vulnerabilidades
- Post-Explotacion

### Componentes y tipos de Modulos
Metasploit Framework se organiza en módulos. Cada módulo es una pieza de código con un propósito concreto.

Tipos de Modulos de Metasploit:

- ***Exploits***: Explotar una vulnerabilidad concreta para ejecutar código en el objetivo. Ejm: *exploit/windows/smb/ms17_010_eternalblue*

- ***Payloads***: Codigo que se ejecuta en el sistema Operativo tras el exploit (Shell, Meterpreter). Ejm: *payload/windows/x64/meterpreter/reverse_tcp*

- ***Auxiliary***: Escaneo, enumeración, fuzzing, ataques de contraseña; sin payload. EJm: *auxiliary/scanner/smb/smb_version*.

- ***Post***: Post-explotación: escalada de privilegios, pivoting, volcado de credenciales. Ejm: *post/multi/recon/local_exploit_suggester*.

- ***Encoders***: Codificar el payload para evadir filtros básicos o antivirus. Ejm: *encoder/x86/shikata_ga_nai*

- ***Nops***: Relleno NOP para estabilizar payloads en exploits de desbordamiento de buffer. Ejm: *nop/x86/single_byte*.

- ***Evasion***: Generar ejecutables que evadan soluciones antivirus (módulos añadidos en versiones recientes del Framework). Ejm: *evasion/windows/windows_defender_exe*

### Conceptos 
- ***msfconsole***: msfconsole es la interfaz principal de Metasploit: una consola interactiva que centraliza el acceso a todos los módulos del framework.

- ***Meterpreter***: Meterpreter es el payload avanzado e interactivo de Metasploit. A diferencia de una shell estándar, corre completamente en memoria (sin escribir en disco), cifra las comunicaciones con el atacante y ofrece comandos nativos para tareas de post-explotación: subir o descargar archivos, capturar pantallas, volcar hashes, pivotar hacia otras máquinas de la red y bastante más. Es una de las piezas más potentes del framework y también de las más detectadas por los EDR modernos.

- ***msfvenom***: Permite crear ejecutables, shellcodes, scripts de PowerShell, APKs de Android y otros artefactos para pruebas.

## Inizializar Metasploit
```bash
sudo systemctl start postgresql
msfdb init || msfdb start
msfconsole
# msf> db_status # Verificamosla conexion a la BD

```

## Flujo Basico 
Dentro de metasploit el flujo generalmente es:
- Buscar -> Selecionar ->  Configurar -> Explotar -> Persistir -> Limpiar -> Opcional (Documentar proceso)
* Ejemplo de un uso Basico:
    - *Buscar*: Buscamos el exploit para una vulnerabilidad conocida de windows (eternalblue).
    ```bash
    # Exploit
    msf> search eternalblue
    # Payload
    msf> search type:payload tcp
    ```
    
    - *Seleccionar*: Seleccionamos el exploit.
    ```bash
    # Exploit
    msf> use windows/smb/ms17_010_eternalblue
    # Payload
    ```
    
    - *Configurar*: Completamos los campos necesarios para lanzar el exploit.
