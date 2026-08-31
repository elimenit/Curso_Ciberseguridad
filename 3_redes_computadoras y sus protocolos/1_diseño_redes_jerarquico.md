# Diseño de Redes Jerarquico (Direcciones MAC, Switches, ARP)
Para que una PC se pueda conectar a una red de Diseño Jerarquico, se necesitan dos cosas:

- ***Direccion MAC (Media Access Control), Direccion Fisica***: No cambia y esta fisicamente asignada a la NIC del Host.
    - Como analizamos las partes de una direcion MAC: Estas redes tiene 6 bytes de largo y estan expresadas en notacion hexadecimal.
    Estan compuestos por dos partes:
        - Los primeros 3 bytes representa el proveedor que fabico la interfaz de red.
        - los otros 3 bytes son el ID unica de la interfaz de red.


- ***Direccion IP, Direccion Logica***:  La dirección IP o dirección de red es asignada a cada host por un administrador de la red en función de la red local. Esta compuesta por dos partes:
    - Parte Red:
    - Parte de Host:

* **Ejemplo**: Una persona no cambia su nombre (MAC) pero si puede cambiar la direccion de su casa (IP).
    
    - Como vemos nuestras direcciones IP y MAC dentro de una Red:
    
        - **Windows**:
            ```cmd
            ipconfig /all
            ```
        - **Linux**:
            ```bash
            ip a || ifconfig 
            ```

## Trafico IP

El tráfico IP se administra basándose en las características y los dispositivos asociados con cada una de las tres capas del modelo de diseño de redes jerárquico: 

- ***Capa de Acceso***: Proporciona un punto de conexion a la red y permite que varios hosts se conecten a otros hosts, generalmente es un conmutador.

- ***Capa de Distribución***: Proporciona un punto de conexion par redes separadas y control el flujo de informacion entre redes, generalmente conmutadores muy potentes o enrutadores.

- ***Núcleo***: Es una capa troncal de alta velocidad, es la encargada de transportar grandes cantidaddes de datos entre multiples redes finales.

## Sistemas de Numeracion (Binario, Decimal y Hexadecimal)

Binario es un sistema de numeración que consta de los dígitos 0 y 1 llamados bits. 
Por el contrario, el sistema de numeración decimal consta de 10 dígitos que incluye del 0 al 9.

Es importante que comprendamos el sistema binario, ya que los hosts, los servidores y los dispositivos de red usan el direccionamiento binario. 

- ***Direcciones IPv4***: Cada dirección consta de una cadena de 32 bits, divididos en cuatro secciones denominadas octetos. Cada octeto contiene 8 bits (o 1 byte) separados por un punto.

- ***Binario a decimal***: por ejemplo el numero 11111 en base 2 convertido a base 0 es la suma del nuero multiplicado, por 2 elevdo a la posicion contando desde cero (1*16+1*8+1*4+1*2+1*1).

- ***Decimal a binario***: es divisiones sucesivas de 2 quedando el resultado en binario del ultimo residuo al primero.

- ***Hexadecimal a decimal***: Aqui es similar al binario.

- ***decimal a hexadecimal***: Residiuos de las divisiones sucesivas por 16, y de abajo para arriba.
- ***Hexadecimal a Binario***: Aqui cada letra vale 4 digitos del sistema binario.

- ***Binario a hexadecimal***: Se toma de a cuatro digitos binarios y se empieze de derecha a izquierda y se lo convierte a una letra del sistema hexadecimal.

## Conmutacion Ethernet

El Instituto de Ingenieros Eléctricos y Electrónicos (IEEE) lleva un control de los estándares de redes, incluidos los estándares Ethernet e inalámbricos.

## Ethernet y el Modelo de Referencia OSI(7 capas) 
Ethernet es una de las dos tecnologías LAN utilizadas hoy en día, siendo la otra LAN inalámbricas (WLAN).

Ethernet se define mediante protocolos de capa física y de capa de enlace de datos.

- **Subcapas del Enlace de Datos**:
    - *Subcapa LLC*:  Esta subcapa IEEE 802.2 se comunica entre el software de red en las capas superiores y el hardware del dispositivo en las capas inferiores. Coloca en la trama información que identifica qué protocolo de capa de red se utiliza para la trama. Esta información permite que múltiples protocolos de Capa 3, como IPv4 e IPv6, utilicen la misma interfaz de red y medios.

    - *Subcapa MAC*: Esta subcapa (IEEE 802.3, 802.11 o 802.15, por ejemplo) se implementa en hardware y es responsable de la encapsulación de datos y el control de acceso a medios. Proporciona direccionamiento de capa de enlace de datos y está integrada con varias tecnologías de capa física.

- **Estandares de la Subcapa MAC**
La subcapa MAC es responsable de la encapsulación de datos y el acceso a los medios.

- Encapsulación de Datos: La encapsulación de datos IEEE 802.3 incluye lo siguiente:

    - Trama de Ethernet - Esta es la estructura interna de la trama Ethernet.
    
    - Direccionamiento Ethernet - La trama Ethernet incluye una dirección MAC de origen y destino para entregar la trama Ethernet de NIC Ethernet a NIC Ethernet en la misma LAN.
    
    - Detección de Errores Ethernet - La trama Ethernet incluye un tráiler de secuencia de verificación de trama (FCS) utilizado para la detección de errores.

## Campos de una trama Ethernet

1) Preambulo(7bytes) y Campos Delimitadores de Inicio (SFD, 1 byte): Se utiliza para la sincronizacion de dispositivos.

2) MAC de Destino: Direccion MAC del dispositivo de destino.

3) MAC de Origen: Identifica el Origen de la trama.

4) Tipo/Longitud (2 bytes): Identifica el protocolo superior encapsulado(Hexadecimal)

5) Campo de Datos (46-1518 bytes): Contiene los datos del paquete IPv4. Todas las tramas deben tener al menos 64 bytes de longitud.

6) Campo Secuencia de Verificacion de Trama(FCS, 4 bytes): Se usa para detectar errores en la trama.

# ARP (Protocolo de Resolucion de Direcciones)
ARP es un protocolo de comunicacion que se utiliza para determinar la direccion MAC asociada a la direccion IP.

Ejemplo es usar wireshark y husmear un paquete ICMP (ping)

## Capturar trafico con Wireshark
- Abrir Wireshark, determinar IP, MAC y filtrar por ICMP.
- La ventana principal de Wireshark se divide en tres secciones el panel de Packet Lists(Lista de paquetes), el panel de Packet Details(Detalles del Paquete) y el panel de Packet Bytes (Bytes del Paquete)

## Direcion MAC
Tenemos tres tipos de direcciones MAC en una red:

- ***Direccion MAC de Unidifusion***:  es la dirección única que se utiliza cuando se envía una trama desde un único dispositivo de transmisión a un único dispositivo de destino.

- ***Direccion MAC de Difusion***: Tiene un direccion MAC FF-FF-FF-FF-FF-FF (48 unidades en binario), se inunda hacia todos los puertos de un conmutador(Excepto el de origen) y no es reenviada por el enrutador.

- ***Direccion MAC de Multidifusion***: Una trama de multicast de Ethernet es recibida y procesada por un grupo de dispositivos en la LAN de Ethernet que pertenecen al mismo grupo de multicast. Las características de una multicast Ethernet son las siguientes:

    - Hay una dirección MAC de destino 01-00-5E cuando los datos encapsulados son un paquete de multidifusión IPv4 y una dirección MAC de destino de 33-33 cuando los datos encapsulados son un paquete de multidifusión IPv6

    - Existen otras direcciones MAC de destino de multicast reservadas para cuando los datos encapsulados no son IP, como Spanning Tree Protocol (STP) y Link Layer Discovery Protocol (LLDP).

    - Se inundan todos los puertos del conmutador Ethernet excepto el puerto entrante, a menos que el conmutador esté configurado para la indagación de multidifusión.

    - No es reenviado por un enrutador, a menos que el enrutador esté configurado para enrutar paquetes de multidifusión.

## Fundamentos del Conmutador

Un switch Ethernet de capa 2 usa direcciones MAC de capa 2 para tomar decisiones de reenvío.No tiene conocimiento de los datos (protocolo) que se transportan en la porción de datos de la trama, como un paquete IPv4, un mensaje ARP o un paquete IPv6 ND. El switch toma sus decisiones de reenvío basándose únicamente en las direcciones MAC Ethernet de capa 2.

Un switch Ethernet examina su tabla de direcciones MAC para tomar una decisión de reenvío para cada trama.

* **Nota**: A veces, la tabla de direcciones MAC se conoce como tabla de memoria de contenido direccionable (content addressable memory, CAM). Aunque el término “tabla CAM” es bastante común, en este curso nos referiremos a ella como “tabla de direcciones MAC”.