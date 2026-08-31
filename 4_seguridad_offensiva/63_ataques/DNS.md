# Ataques DNS
DNS domain name server traduce nombres de dominio a direcciones IP.

## Principales Ataques
- ***DNS Tunneling***: Consiste en codificar los datos de otros programas o protocolos dentro de consultas y respuestas DNS. 
    
    Esto puede ser una carga útil que puede tomar el control de un servidor DNS para que los atacantes lo gestionen para sus propios fines. 
    
    Dado que el DNS está permitido en la mayoría de los entornos, esta es una técnica que han utilizado adversarios para enviar paquetes de Mando y Control entre su servidor CC y bots cuando están protegidos por una infraestructura mayor.

- ***DNS Amplification***: este es un tipo de ataque DOS que manipula los servicios DNS públicos, haciendo que inunden un objetivo con una gran cantidad de grandes paquetes UDP, lo que finalmente hace que el objetivo se sobrecargue. 
    
    A diferencia del escenario discutido en el episodio web de esta lección, el servicio DNS aquí no es la víctima sino la herramienta utilizada contra ella. Normalmente, este ataque consiste en solicitudes de consulta DNS en las que el atacante reemplaza la dirección de origen por la dirección del objetivo real (también conocido como suplantación). 
    
    Los servicios DNS enviarán entonces respuestas DNS al objetivo objetivo en lugar de al atacante. Utilizando diversas técnicas de amplificación, los perpetradores pueden "inflar" el tamaño de los paquetes, haciéndolos aún más dañinos debido a su tamaño y no solo por la cantidad de respuestas que recibe el objetivo.

- ***DNS Flood Attack***: Al desplegar una gran cantidad de paquetes de peticiones DNS válidas (pero suplantadas), un servidor DNS puede verse saturado. 
    
    Este es el tipo de ataque DNS presentado en el episodio web anterior. Una variante de este ataque se conoce como NXDomain cuando el gran volumen de solicitudes DNS incluye solicitudes inválidas o solicitudes para registros inexistentes.

- ***DNS Spoofing***: También conocido como envenenamiento de caché DNS, consiste en utilizar registros DNS alterados para redirigir el tráfico en línea a un sitio fraudulento que se hace pasar por el destino previsto.


