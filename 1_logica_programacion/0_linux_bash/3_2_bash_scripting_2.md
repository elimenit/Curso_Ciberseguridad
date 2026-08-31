# Comandos Basicos de Redes

## PING

El comando ping prueba conectividad entre dispositivos enviando paquetes ICMP a travez de la RED.

```bash
# Simple
ping 8.8.8.8

### IPv4 explicito
ping -4 8.8.8.8 -I wlan0 -i 3
# I: Interfaz de red
# i: intervalo de tiempo
### IPv6
ping -6 $IP -a -I wlan0
```

## IFconfig
muestra y configura las interfaces de red.
alguna de sus caracteriscas es :
- Direccion IP: direccion logica del dispositivo.
- Direccion MAC: direccion fisica del dispositivo.
- Netmask: Mascara de red, nos ayuda a saber si estamos en una subred/red.


```bash
ifconfig
```
Su version moderna IP 
```bash
ip a || ip link show
ip link set wlan0 up # Levanta la interfaz
ip link set wlan0 down # baja la interfaz
```

## DNS (Domain Name Server)
Traduce nombres de dominio a direcciones IP
### DIG(Domain Information Groper)
- Respuesta DNS completa
```bash
dig example.com
```
- Respuesta DNS corta
```bash
dig +short example.com
```

- Consultar un tipo de Registro 
```bash
# Registro IPv4
dig example.com A
# Registro IPv6
dig example.com AAAA
# Servidores de correo
dig example.com NS
# Servidores DNS autoritarios
dig example.com TXT
# Registros de Texto, como SPF, DKIM o verificacion de servicios.
dig example.com CNAME
```

- ***Consultar usando un DNS especifico***
```bash
dig @8.8.8.8 example.com
dig @1.1.1.1 example.com
```
- ***Consulta Inversa***

```bash
dig -x 8.8.8.8
```
