# Curso de ciberseguridad desde cero.
## PROLOGO
    Buenos días a todos. Se dice que hoy en día existen dos tipos de empresas: las que han sido hackeadas y las que aún no saben que lo han sido.

    En un mundo donde los ataques son cada vez más sofisticados, la industria ya no busca personas que solo sepan correr un escáner de vulnerabilidades; busca profesionales integrales. Por eso, hemos diseñado este curso de Ciberseguridad no como una lista de temas sueltos, sino como una evolución lógica.

    Primero, construiremos los cimientos. Nadie puede hackear o proteger un sistema si no entiende cómo funciona. Por eso arrancamos con Lógica y Programación, entendiendo a fondo la Arquitectura, los Sistemas Operativos, y por supuesto, las Redes de Computadoras y sus Protocolos.

    Una vez que entendemos el terreno, entramos al campo de batalla. Veremos el contraste puro entre la Seguridad Ofensiva (el Web Hacking y Pentesting) y la Seguridad Defensiva (el Hardening y el Blue Team), aplicando esto al corazón de las empresas: la Explotación de Active Directory y Redes Corporativas.

    Pero no nos vamos a quedar en lo superficial. En la tercera etapa vamos a ir "bajo el capó". Llevaremos la Programación a un nivel avanzado con C, C++ y Python, aprenderemos de Explotación de Sistemas y Escalada de Privilegios, y desarmaremos amenazas reales con Ingeniería Inversa y Análisis de Malware.

    Finalmente, llevaremos todo este arsenal al mundo real de hoy: la Seguridad Cloud, DevSecOps y Entornos Modernos.

    Al finalizar este recorrido, no solo sabrán cómo funciona un ciberataque, sino que tendrán la capacidad técnica para prevenirlo, detectarlo y neutralizarlo. 

    Empecemos!!!

## Estructura del curso:
Este curso incluye 11 modulos.
- Modulo 0: "Antes del codigo"
- Modulo 1: "Logica y Programacion"
- Modulo 2: "Arquitectura y Sistemas Operativos"
- Modulo 3: "Redes de Computadoras y Protocolos"
- Modulo 4: "Seguridad Ofensiva (Web Hacking & Pentesting)
- Modulo 5: "Seguridad Defensiva (Blue Team & Hardening)"
- Modulo 6: "Explotacion de Active Directory y Redes Corporativas"
- Modulo 7: "Programacion Avanzada C/C++ y Python"
- Modulo 8: "Explotacion de Sistemas y Escalada de Privilegios"
- Modulo 9: "Ingeneria Inversa y Analisis de Malware"
- Modulo 10: "Seguridad Cloud, DevSecOps y Entornos Modernos"

## Contenidos
Los temas pueden cambiar o variar con el tiempo, lo que cabe recalcar es que este es la guia de aprendizaje.
- ***Modulo 0***: "Antes del codigo"
    Objetivo: Introduccion al Curso y primeros pasos de la logica linguistica.
    - Introduccion al curso.
    - Logica proposicional
- ***Modulo 1***: "Logica y Programacion"
    El objetivo es que le pierdan el miedo a la consola y aprendan a pensar como programadores, usando lenguajes útiles para seguridad.

   - **Parte 0:** Preparando el Arsenal: Instalación de VirtualBox, Kali Linux y VSCode.
    > - **Parte 1:** Entendiendo la Terminal: Navegación básica en entornos Linux y Windows.
    - **Parte 2:** Gestión de Permisos: Usuarios, grupos y privilegios (Lectura, escritura y ejecución).
    - **Parte 3:** Bash Scripting I: Variables, entradas del usuario y salidas.
    - **Parte 4:** Bash Scripting II: Condicionales (if/else) y operadores lógicos.
    - **Parte 5:** Bash Scripting III: Bucles (for, while, case).
    - **Parte 6:** Bash Scripting IV: Filtrado y manipulación de texto (grep, cut, awk) para analizar comandos.
    - **Parte 7:** Python I: Sintaxis básica, variables y tipos de datos.
    - **Parte 8:** Python II: Listas, diccionarios y control de flujo.
    - **Parte 9:** Python III: Funciones y modularización del código para crear nuestras propias herramientas.
    - **Parte 10:** Python IV: Lectura y escritura de archivos (Ej: Parsear logs de servidores).
    - **Parte 11:** PowerShell I: Qué son los Cmdlets, alias y el pipeline (vs. Linux).
    - **Parte 12:** PowerShell II: Filtrado y manipulación de objetos para enumeración en Windows.
    - **Parte 13:** Proyecto Integrador: Creación de un script multiplataforma que busque archivos y filtre información sensible usando los tres lenguajes.
        
- ***Modulo 2***: "Arquitectura y Sistemas Operativos"
    Desgranamos cómo funcionan los sistemas. Si no entienden la estructura, no pueden encontrar fallos.

    - Parte 14: El proceso de arranque (Boot): BIOS/UEFI, MBR/GPT y el gestor de arranque (GRUB).

    - Parte 15: Anillos de Privilegios (Rings): User Space vs. Kernel Space.

    - Parte 16: Gestión de Memoria: Paginación, Memoria Virtual y Swap.

    - Parte 17: Linux Internals 1: El Sistema de Archivos Virtual (VFS) e Inodos.

    - Parte 18: Linux Internals 2: Permisos avanzados (SUID, SGID, Sticky Bit) y ACLs.

    - Parte 19: Linux Internals 3: El Kernel de Linux y cómo gestionar módulos (LKM).

    - Parte 20: Linux Internals 4: Gestión de procesos en profundidad (Estados, Señales, Forks).

    - Parte 21: Windows Internals 1: La arquitectura NT y el HAL (Hardware Abstraction Layer).

    - Parte 22: Windows Internals 2: NTFS vs. FAT32 y Alternate Data Streams (ADS).

    - Parte 23: Windows Internals 3: Buceando en el Registro de Windows (Hives y Keys críticas).

    - Parte 24: Windows Internals 4: Procesos, Hilos (Threads) y Handles.

    - Parte 25: Windows Internals 5: El rol crítico de las DLLs (Dynamic Link Libraries).

    - Parte 26: Subsistema de Windows para Linux (WSL): Arquitectura y riesgos de seguridad.

    - Parte 27: Virtualización y Contenedores: Diferencias a nivel de sistema operativo.

- ***Modulo 3***: "Redes de Computadoras y Protocolos"
    Expandido para cubrir desde la conmutación local hasta el enrutamiento global.
    
    - Parte 28: Direcciones MAC, Switches y el protocolo ARP (¿Cómo se conocen las máquinas?).

    - Parte 29: IPv4 a fondo: Clases, Subnetting, VLSM y CIDR (Matemática de redes).

    - Parte 30: El futuro ineludible: IPv6 (Estructura, SLAAC y diferencias con IPv4).

    - Parte 31: Enrutamiento (Routing): Cómo viajan los paquetes (Rutas estáticas y NAT).

    - Parte 32: Protocolos de enrutamiento dinámico (BGP, OSPF) explicados simple.

    - Parte 33: Capa 4: TCP (El Handshake de 3 vías y control de flujo) vs. UDP.

    - Parte 34: DNS en profundidad: Registros (A, AAAA, MX, TXT) y resolución iterativa/recursiva.

    - Parte 35: DHCP: El proceso DORA y la asignación dinámica de IPs.

    - Parte 36: VLANs y Trunking (802.1Q): Segmentación de redes lógicas.

    - Parte 37: Criptografía en red: Hashes (MD5, SHA) y Cifrado (AES, RSA).

    - Parte 38: El protocolo TLS/SSL: Cómo funciona el Handshake criptográfico de HTTPS.

    - Parte 39: VPNs y Túneles: IPsec, OpenVPN y WireGuard.

    - Parte 40: Análisis de Tráfico 1: Filtros avanzados en Wireshark.

    - Parte 41: Análisis de Tráfico 2: Extracción de archivos y credenciales desde PCAPs.

    - Parte 42: Herramientas de línea de comandos para redes (Tcpdump y Tshark).

- ***Modulo 4***: "Seguridad Ofensiva (Web Hacking & Pentesting)
    La puerta de entrada al Red Team. Metodología, herramientas y explotación de vulnerabilidades modernas.

    - Parte 59: La Metodología del Pentester (PTES y OSSTMM).

    - Parte 60: OSINT Avanzado: Maltego, TheHarvester y análisis de metadatos (ExifTool).

    - Parte 61: Escaneo de Redes: Nmap Host Discovery y Evasión de Firewalls/IDS.

    - Parte 62: Enumeración de Servicios: Identificando versiones y vulnerabilidades (SMB, FTP, SNMP).

    - Parte 63: Herramientas de Intercepción: Burp Suite Pro/Community a fondo (Repeater, Intruder, Decoder).

    - Parte 64: OWASP Top 10: Inyección SQL (SQLi) In-Band (Error y Union based).

    - Parte 65: Inyección SQL (SQLi) Blind: Time-based y Boolean-based.

    - Parte 66: Cross-Site Scripting (XSS): Reflejado, Almacenado y DOM-based.

    - Parte 67: Cross-Site Request Forgery (CSRF) y cómo mitigarlo con tokens.

    - Parte 68: Server-Side Request Forgery (SSRF): Atacando la red interna desde la web.

    - Parte 69: XML External Entity (XXE): Lectura de archivos locales y exfiltración de datos.

    - Parte 70: Insecure Deserialization: Conceptos teóricos y ejemplos en PHP/Java.

    - Parte 71: Command Injection (OS Injection) y bypass de filtros de caracteres.

    - Parte 72: Local File Inclusion (LFI) a Remote Code Execution (RCE) mediante Log Poisoning.

    - Parte 73: Hacking de APIs: Enumeración de endpoints y vulnerabilidades BOLA/IDOR.

    - Parte 74: Evasión de Web Application Firewalls (WAF) básica.

    - Parte 75: Metasploit Framework: Arquitectura, Módulos (Exploits, Payloads, Auxiliaries) y Meterpreter.

- ***Modulo 5***: "Seguridad Defensiva (Blue Team & Hardening)"
    El módulo más buscado por empresas. Cómo proteger, monitorear y responder a incidentes.
    
    - Parte 43: ¿Qué es un SOC? Tiers (1, 2, 3), roles y el día a día.

    - Parte 44: Frameworks de Seguridad: MITRE ATT&CK vs. Cyber Kill Chain.

    - Parte 45: Hardening de Servidores Linux: Bastionado de SSH y políticas de PAM.

    - Parte 46: Hardening de Windows: Despliegue de LAPS (Local Administrator Password Solution).

    - Parte 47: Firewalls de Red (Perimetrales): Políticas de denegación por defecto.

    - Parte 48: Firewalls de Host: Iptables/UFW y Windows Defender Firewall a fondo.

    - Parte 49: IDS vs IPS: Sistemas de detección y prevención de intrusos (Snort / Suricata).

    - Parte 50: Centralización de Logs: ¿Qué es un SIEM? Arquitectura general.

    - Parte 51: Laboratorio SIEM: Instalación y configuración de Wazuh.

    - Parte 52: Ingesta de Logs: Configurando agentes en Windows y Linux.

    - Parte 53: Detección de Amenazas: Creación de reglas Sigma y YARA.

    - Parte 54: EDR (Endpoint Detection and Response): Evolución de los antivirus.

    - Parte 55: Threat Intelligence (Inteligencia de Amenazas): Consumo de IOCs (Indicadores de Compromiso).

    - Parte 56: Respuesta a Incidentes (IR): El ciclo de vida PICERL.

    - Parte 57: Informática Forense Básica: Adquisición de imágenes de disco y cadena de custodia.

    - Parte 58: Forense de Memoria RAM: Introducción a Volatility Framework.

- ***Modulo 6***: "Explotacion de Active Directory y Redes Corporativas"
    El corazón del OSCP y los entornos empresariales reales.

    - Parte 76: Arquitectura de Active Directory: Bosques, Dominios, Árboles y Controladores de Dominio.

    - Parte 77: Autenticación en Windows: NTLM vs. Kerberos (Explicación técnica detallada).

    - Parte 78: Envenenamiento de red local: LLMNR/NBT-NS e IPv6 (Responder y mitm6).

    - Parte 79: Ataques de Relevo: SMB Relay y NTLM Relay.

    - Parte 80: Enumeración de Directorio Activo con BloodHound y SharpHound.

    - Parte 81: Enumeración sin herramientas automáticas: PowerView y módulos de AD.

    - Parte 82: Kerberoasting: Teoría y extracción de hashes de Service Principal Names (SPNs).

    - Parte 83: AS-REP Roasting: Explotando usuarios sin preautenticación.

    - Parte 84: Movimiento Lateral: Pass the Hash (PtH) y Pass the Ticket (PtT).

    - Parte 85: Abuso de Listas de Control de Acceso (ACLs / ACEs) en Active Directory.

    - Parte 86: Ataques de Delegación de Kerberos (Unconstrained y Constrained Delegation).

    - Parte 87: Persistencia en Dominio: Ataque DCSync (Secretump) y Golden/Silver Tickets.

    - Parte 88: Conceptos de Pivoting: Qué es y por qué es necesario en redes segmentadas.

    - Parte 89: Técnicas de Pivoting: SSH Port Forwarding, Chisel y Proxychains.

    - Parte 90: Introducción a Command and Control (C2): Instalación y uso básico de Sliver.

- ***Modulo 7***: "Programacion Avanzada C/C++ y Python"
    Desarrollo de herramientas propias. Preparación para ingeniería inversa.

    - Parte 91: Sockets en Python 1: Creando un cliente TCP y UDP desde cero.

    - Parte 92: Sockets en Python 2: Programando un servidor y manejando múltiples conexiones (Multithreading).

    - Parte 93: Sockets en Python 3: Programando nuestra propia Reverse Shell.

    - Parte 94: Python avanzado: Scapy para manipulación y creación de paquetes de red.

    - Parte 95: Introducción a C: Variables, Tipos de datos y Estructuras (Structs).

    - Parte 96: Memoria en C: Punteros (La pesadilla de todos, explicada fácil).

    - Parte 97: Memoria en C: Asignación dinámica (malloc, calloc, free) y Memory Leaks.

    - Parte 98: Interactuando con la Windows API (Win32 API) usando C/C++.

    - Parte 99: Llamadas al sistema (Syscalls) en Linux y Windows (Conceptos).

    - Parte 100: Desarrollo de Malware Básico 1: Programando un Keylogger local en C.

    - Parte 101: Desarrollo de Malware Básico 2: Ofuscación de strings para evadir antivirus estáticos.

- ***Modulo 8***: "Explotacion de Sistemas y Escalada de Privilegios"
    Vulnerabilidades a nivel de código y configuraciones locales.

    Parte 102: Arquitectura x86: Registros de la CPU (EAX, ESP, EIP, etc.).

    Parte 103: Memoria Stack vs. Heap: Cómo se estructuran los programas en ejecución.

    Parte 104: Anatomía de un Buffer Overflow (Stack-based) teórico.

    Parte 105: Buffer Overflow Práctico 1: Fuzzing y control del registro EIP.

    Parte 106: Buffer Overflow Práctico 2: Identificando Bad Characters (Caracteres malos).

    Parte 107: Buffer Overflow Práctico 3: Encontrando el módulo de retorno (JMP ESP) y generando el Shellcode.

    Parte 108: Protecciones de memoria modernas: ASLR, DEP/NX y Canarios (Stack Cookies).

    Parte 109: Bypass de protecciones: Teoría de Return-Oriented Programming (ROP Chains).

    Parte 110: Metodología de Escalada de Privilegios (PrivEsc) en Linux y Windows.

    Parte 111: PrivEsc Linux: Abuso de permisos SUID/SGID y GTFOBins.

    Parte 112: PrivEsc Linux: Tareas Cron mal configuradas y PATH Hijacking.

    Parte 113: PrivEsc Linux: Capabilities, NFS Root Squashing y Kernel Exploits (Dirty COW).

    Parte 114: PrivEsc Windows: Abuso de servicios (Unquoted Service Paths y Modificación de Binarios).

    Parte 115: PrivEsc Windows: DLL Hijacking local y AlwaysInstallElevated.

    Parte 116: PrivEsc Windows: Abuso de Tokens (SeImpersonatePrivilege) y familia Potato/PrintSpoofer.

- ***Modulo 9***: "Ingeneria Inversa y Analisis de Malware"
    Desarmando software malicioso para entender su comportamiento.

    Parte 117: Curso intensivo de Ensamblador (Assembly) x86/x64: Instrucciones (MOV, PUSH, POP, JMP).

    Parte 118: Análisis de Cabeceras: Estructura del formato PE (Portable Executable) en Windows.

    Parte 119: Análisis de Cabeceras: Estructura del formato ELF en Linux.

    Parte 120: Configuración de un Laboratorio de Análisis de Malware aislado y seguro.

    Parte 121: Análisis Estático: FLOSS, extracción de strings e identificación de funciones importadas (IAT).

    Parte 122: Identificación de Packers y Encriptadores (Detect It Easy / PEiD).

    Parte 123: Análisis Dinámico 1: Monitoreo del registro y sistema de archivos con Procmon y Regshot.

    Parte 124: Análisis Dinámico 2: Monitoreo de red con INetSim y Wireshark.

    Parte 125: Desensambladores: Navegación de código y estructura con Ghidra.

    Parte 126: Debuggers 1: Introducción a x64dbg y puntos de interrupción (Breakpoints).

    Parte 127: Debuggers 2: Modificando el flujo de ejecución (Parchando binarios).

    Parte 128: Técnicas comunes de evasión de Malware: Anti-Debugging y Anti-VM (Teoría).

    Parte 129: Análisis de documentos maliciosos: Macros de Office (VBA) y archivos PDF.

    Parte 130: Desempaquetado manual (Unpacking) básico haciendo dumping de memoria.

- ***Modulo 10***: "Seguridad Cloud, DevSecOps y Entornos Modernos"
    Las tecnologías donde el mercado exige profesionales hoy.

    - Parte 131: Conceptos Cloud: Diferencias entre IaaS, PaaS, SaaS y Serverless.

    - Parte 132: El Modelo de Responsabilidad Compartida (¿Qué proteges vos y qué protege Amazon/Microsoft?).

    - Parte 133: AWS Security: IAM (Identity and Access Management) y políticas JSON.

    - Parte 134: AWS Security: Enumeración y explotación de Buckets S3 mal configurados.

    - Parte 135: Azure Security: Entra ID (Ex Active Directory) y diferencias con el AD On-Premise.

    - Parte 136: Virtualización vs. Contenedores: Repaso arquitectónico de Docker.

    - Parte 137: Seguridad en Docker: Namespaces, cgroups y capacidades del kernel.

    - Parte 138: Vulnerabilidades en Contenedores: Docker Socket expuesto y escapes de contenedores al Host.

    - Parte 139: Introducción a Kubernetes (K8s): Pods, Nodos y la API de K8s.

    - Parte 140: Seguridad en Kubernetes: Role-Based Access Control (RBAC) y Network Policies.

    - Parte 141: Infraestructura como Código (IaC): Terraform básico.

    - Parte 142: Seguridad en IaC: Escaneo de plantillas de Terraform con Checkov/Tfsec.

    - Parte 143: DevSecOps: Qué es la integración y despliegue continuo (CI/CD) (GitHub Actions / GitLab CI).

    - Parte 144: Inyectando seguridad en el Pipeline: Herramientas SAST y DAST automáticas.

    - Parte 145: Gestión de Secretos: Uso de HashiCorp Vault vs. Variables de entorno en texto plano.

    - Parte 146: Cierre del Curso: Cómo armar tu Portfolio, participar en CTFs y prepararte para entrevistas laborales.