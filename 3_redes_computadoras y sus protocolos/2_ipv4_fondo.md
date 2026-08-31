# IPv4 a fondo: Clases, Subnetting, VLSM y CIDR (Matemática de redes).

## Que es IPv4
Una dirección IPv4 es una dirección jerárquica de 32 bits que se compone de una porción de red y una porción de host.

```bash
192.168.0.1
# Porcion de Red 24 bits
# Porcion de Host ultimos 8 bits
```
Asignar una direccion IPv4 a un host requiere lo Siguiente:
- Direccion IPv4 del host
- Mascara de Subred: Identifica la parte de Red y Host.

Para cumplirlo se necesita:
- Direcion de Puerta de Enlace(Gateway) predeterminada para llegar a redes remotas.
- Direccion IPv4 del Servidor DNS para traducir Nombres de Dominio a direcciones IPv4

### Mascara de Subred


## Que es el Subnetting
Es una coleccion de direcciones IPv4 que permite definir el numero de redes y de host que se desean utilizar en una subred determinada

## Que es VLSM
Es una tecnica que permite dividir subredes en redes mas pequeñas(Solo se aplica a las direcciones de subredes que no estan siendo utilizadas por ningun host).

## Que es CIDR (Resumen de Rutas)
Es la simplificacion de varias direcciones IP en un sola direccion IP Patron que cubra todo el esquema de direccionamiento IP.

## Tipos de Red 
Existen 2 tipos de Red, las Direcciones IP publicas y privadas.

- ***IP Privadas***: Son direcciones internas en una red y estan clasificadas por su alcance:
    - *Clase A*: 10.0.0.0 - 10.255.255.255, netmask: 255.0.0.0, ejm: 10.0.0.0
    - *Clase B*: 172.16.0.0 - 172.31.255.255, netmask: 255.255.0.0, ejm: 172.17.9.0
    - *Clase C*: 192.168.0.0 - 192.168.255.255, netmask: 255.255.255.0,ejm: 192.168.0.4

- ***IP Publicas***: Direcciones IP accesibles desde internet:
    - *Clase A*: 0-127 , netmask: 255.0.0.0, ejm: 127.0.0.1
    - *Clase B*: 128-191, netmask: 255.255.0.0, ejm: 172.15.1.2
    - *Clase C*: 192-223, netmask: 255.255.255.0, ejm: 192.25.18.0
