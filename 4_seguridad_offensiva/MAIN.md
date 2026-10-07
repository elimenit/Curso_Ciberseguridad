# Conceptos Basicos
- ***Activo***: 

## Evolucion de las Amenazas Ciberneticas

- *De ataques simples a campañas persistentes*
- *El ataque como proceso, no como evento*
- *Modelos Conceptuales Usados en la Industria*

* **Ahora veremos**

- *Entender Riesgos Actuales en el ciberespacio*
- *Como es un ataque y como se estructura*
- *Prevencion con modelo de amenazas*

* **Evolucion de los Ataques**
    - *Finales de los 80-90*: Aparicion de **Malware Experimental** y gusanos(ej: Morris Worm). 

        Codigo malicioso simple, motivacion tenica o academica, impacto limitado.

    - **Finales de los 90-principios 2000**: **Troyanos y Gusanos Avanzados**. Automatizacion de propagacion y primeras infecciones masivas. El daño empieza a ser economico.

    - **Mediados 2000**: **Phishing**, Robo de credenciales, spam masivo y explotacion del factor humano omo vector principal.

    - **2007-2010**: **Botnets y Ataques Coordinados**. DDoS, SQL Injection, sabotaje digital y control remoto de miles de equipos.
    - **2010-2014**: **Ramsonware & APTs**, ataques persistentes, campañas dirigidas. Compromiso prolongado y objetivos estrategicos.
    -**2014-Adelante**: **Amenazas complejas y automatizadas**: Ransomware avanzado, malware sin archivos, ataques a ICS, phishing asistido por IA y operaciones Hibridas.


* **Complejidad del Ciberespacio Actual**
    - **Infraestructuras Conectadas**
        * **CLoud**
        * **Usuarios**
        * **Moviles**
        * **IoT**
        * **Sistemas Industriales**

    - **Dependencias tecnicas y Organizacionales**
    - **Efectos emergentes dificiles de prever**

* **Superficie de ataque y complejidad**
- *La infraestructura actual es heterogenea y altamanete interconectada*
- *Mas componentes implica mas puntos de falla y mas puntos debiles potenciales*
- *La creciente Interconexion genera dependencias complejas entre componentes*

> *Esta Complejidad amplia a **superficie de Ataque***
> El atacante no necesita conocer todo el sistema, La Defensa si necesita visibilidad global

* **Clasificacion de fallas de Seguridad**
Los Incidentes de seguridad no surgen unicamente de errores tecnicos.
    
    - **Fisicas**:
        * *Acceso fisico no autorizado*
        * *Sabotaje de Equipos*
        * *Fallas de Energia*
        * *Manipulacion o robo de dispositivos*
        * *Errores o debilidades dediseño en la fabricacion de hardware*
    
    - **Logicas**:
        * *Errores de Programacion*
        * *Fallas de Autenticacion*
        * Inyeccion de Codigo, Configuraciones Inseguras*
        * Errores o debilidades de diseño en la logica del software*
        
    - **Humanas**:
        * *Desconocimieento, Falta de concientizacion*
        * *Desentidimiento*
        * *Ingenuidad frente a Ingenria Social*
        * *Configuraciones Inseguras por error humano*
        * *Abuso de privilegios, sabotaje o traicion*

    * **Ejemplo de falla multifactor**:
        - *Etrega de credenciales (Factor Humano)*
        - *No hay MFA ni controles adecuados (Factor Logico)*

> *Sistemas de Seguridad Altamente complejos*: Siguen siendo vulnerables a vectores Simples, El sistema debe diseñarse asumiendo el error humano.

> Los atacntes no esperan a que parcheemos, La mayoria de los ataques explotan vulnerabilidades conocidas, No siempre utilizan 0-Day.

> EL riesgo no proviene de los 0-Day, sino de vulnerabilidades conocidas que no se corrigen a tiempo.

## Dificultad para atribuir Responsabilidad
Dificil Trazabilidad -> Responsabilidad dificil de probar

Factores que dificultan la atribucion
- **Anonimato**: Ocultamiento deliberado de la identidad del atacante.

- **Suplantacion**: Uso de identidades o recursos ajenos para ejecutar el ataque.

- **Imitacion (False Flags)*: EL atacante introduce indicios deliberados para desviar la atribucion.

- **Uso de Terceros / Intermediarios**: Ejecucion del ataquea travez de infraestructura o actores interpuestos.

* **Tipos de atribucion de la Responsabilidad**:
    
    - **Politica**: Motivaciones y Objetivos.
    
    - **Tecnica**: TTPs(Tacticas, Tecnicas y procedimientos), herramientas, infraestructura
    
    - **Forense**: Evidencias Verificables.

> Mientras la intuicion busca culpables, la ciberseguridad atribuye responsabilidad sobre la base de evidencia.

* **Venta de exploits 0-Day(Dia cero)**
- Se centra en vulnerabilidades de alto riesgo y exploits completamente funcionales.
- Clientes: Organizaciones gubernamentales y Clientes Corporativos.

> Dado el perfil de los potenciales interesados, el precio visible no define el valor real del exploit.
> No es un escenario teorico: Es el contxto operativo de empresas y estados reales.

## De la capacidad al ataque Real
Tener capacidad no implicar atacar

**La Kill Chain describe como esta capacidad se convierte en un ataque real**

- Los actores avanzados **no atacan al azar**

- Planifican, preparan y ejecutan en **fases**

- Cada fase ofrece **oportunidades de deteccion y defensa**

- Fallar en una fase **no elimina al atacante**

> La seguridad no se juega en un punto, se juega a lo largo de **toda la cadena**

### Amenazas Persistentes Avanzadas (APT)
Un APT (Advanced Persistent Threat) se define por su caracter, estrategico, persistente y orientado a objetivos de largo plazo, mas que la sofisticacion tecnica puntual.

- **Campañas prolongadas en el tiempo**, que pueden durar meses o años.

- **Objetivos Claramentes definidos**, generalmente vinculados a informacion sensible, ventaja competitiva o posicionamiento estrategico.

- Bajo perfil operativo, **priorizando sigilo, la persistencia** y la evasion de deteccion.

- **Adaptacion continua**, ajustando tecnicas, infraestructura y herramientas segun la respuesta del defensor.

> Un APT representa una forma de operar, no una herramienta ni un unico ataque.

* **APT de Origen Estatal**
En actores estatales, las APTs suelen estar alineadas con:
- Intereses geopoliticos.
- Inteligencia estrategica.
- Preparacion o Apoyo a conflictos futuros.

Estos grupos cuentan con:

- Acceso sostenido a vulnerabilidades 0-Day.
- Desarrollo de herramientas propias.
- Capacidad de sostener operaciones complejas, sostenidas y coordinadasa escala nacional o global.

> Aqui, la APT actua como extension de la politica exterior y de la inteligencia estatal.

* **APT de origen criminal**
- Mantienen **campañas persistentes y coordinadas**
- Invierten en **infraestrutura propia**, malware avanzado y equipos especializados.
- Persiguen **beneficios econicos a largo plazo**, cmo espionaje industrial, fraude sistematico o control prolongado de activos comprometidos.

> La diferencia no esta en el como, sino en el para que: EL objetivo es economico o competitivo, no politico.

- **APT hibridas**: Porque la atribucion tecnica no alcanza.

En campañes reales, la atribucion tecnica es insuficiente porque:
- No existe una separacion clara entre APT estatales y crimen organizado.
- Se utilizan modelos hibridos, operaciones proxy y alineamientos estrategicos.

> La tecnica se reutiliza; el objetivo cambia.

* **Analisis de Vulnerabilidades**
Identificar debilidades en un sistema,aplicaciones o configuraciones.

- Reconocer la existencia y el ipacto potencialde las fallas, sin explotarlas activamente.
- Se enfoca en vulnerabilidades conocidas, no en ataques 0-Day.
- Permite priorizar correcciones y reducir la superficie de ataque.
- Constituye un insumo fundamental para la gestion de  riesgos y el modelo de amenazas.
- Debe complementarse con una gestion efectiva de parches.

### Cyber Kill Chain (Lockheed Martin)
El concepto de Kill Chain proviene del ambito militar y describe las etapas necesarias para ejecutar una accion ofensiva contra un objetivo.

En 2011, Lockheed Martin aplico la estructura a la seguridad de la informacion.

Ideas Clave:

- El ataque se desarrolla en etapas encadenadas, no como un evento aislado.

- Cada fase ofrece oportunidades de deteccion, interrupcion o mitigacion.

- Romper la cadena en cuaquier punto puede evitar o limitar el impacto del ataque.

* **Fases:**
- **Reconocimiento**: Recoleccion de informacion sobre el objetivo  su entorno.
- **Weaponizaton**: Preparacion del exploit y del payload.
- **Entrega**: Envio del vecor de ataque.
- **Explotacion**: Explotacion de una vulnerabilidad para ejecutar codigo o ganar acceso.
- **Instalacion**: Despliege y Persistencia.
- **Comando y control(C2)**: Establecimiento de comunicacion con la infrestructura del atacante.
- **Acciones sobre el objetivo**: Movimiento lateral, esccalamiento de priviegios, robo, alteracion o destruccion de informacion.

### Ciclo OODA en Ataque y Defensa

El ciclo OODA fue formulado por John Boyd como un modelo paa entender la toma de decsiones en situaciones de conflicto.

EL acronimo describe las etapas de Observar, Orientar, Decidir y Atuar, y omo un actor interactua con su entorno y con un adverasio activo.

* **Ciclo OODA**

- **1. Observar**: Recolectar señales, eventos, indicadores yomportamientos relevantes sin analizarlos aun.

- **2. Orientar**: Estudiar los datos, interpretarlos y enontrar la mejor manera de abordar el problema.

- **3. Decidir**: Seleccionar una linea de accion posible entre varias alternativas.

- **4. Actuar**: Ejecutar la decision y observar sus efectos, si el objetivo no se alcanzo, el ciclo se repite.

> La ventaja esta en orientar y decidir mas rapido que el adversario, no en iterar por inercia.

* **Ciclo OODA Ofensivo**

En **Seguridad Ofensiva**, el atacante observa el entorno y las defensas, **se orienta para coprender la arquitectura y los puntos debiles, *deicide el vector de ataque y actua.***

Busca *desorganizar el OODA defensivo*, forjando respuestas tardias o incorrectas.

- **1. OBSERVAR**: Recolecta informacion del objetivo, su infraestructura, servicios expuestos y comportamientos defensivos.

- **2 ORIENTAR**: Interpretar la arquitectura, debilidades y controles existentes para identificar oportunidades de ataque.

- **3.DECIDIR**: Seleccionar el vector de ataque mas conveniente entre varias alternativas posibles.

- **4.ACTUAR**: Ejecutar el ataque y observar la reaccion defensiva. 
    Si el Objetivo no se alcanzo el ciclo se repite.


* **Ciclo OODA Defensivo**

En **Seguridad Defensiva**, la organizacion observaseñales y alertas, se orienta interpretando el contexto del incidente, decide coo responder y **actua conteniendo la amenaza**.

Busca **interrumpir el OODA Ofensivo**, reduciendo la capacidad del atacante de adaptarse.

- **1.OBSERVAR**: Recolecta señales, alertas y eventos de seguridad del entorno sin analizarlos aun.

- **2.ORIENTAR**: Interpretar los datos para comprender el incidente, su contexto y su impacto potencial.

- **3.DECIDIR**: Seleccionar la respuesta mas adecuada entredistintas opciones de contenciony mitigacion.

- **4.ACTUAR**: Ejecutar la respuest y observar sus efectos. 
    Si el incidente no fue contenido, el ciclo se repite.

> Ataque y Defensa no coparten un mismo OODA: cada uno tiene el suyo, y ambos se influyen mutuamente.

* **Herramientas Usadas en el OODA de Ciberseguridad**
- **Ciclo OODA Ofensivo**: 
    - **1.OBSERVAR**: OSINT, Nmap, TheHarvester, Whois, Dig
    - **2.ORIENTAR**: Diagramas de Red, ATT&CK, analisis manual.
    - **3.DECIDIR**: CVE/CVSS, Metasploit, Arboles de ataque, priorizacion del objetivo.
    - **4.ACTUAR**: Metasploit, Scripts, uso de Malware.

- **Ciclo OODA Defensivo**:
    - **1.OBSERVAR**: SIEM, EDR, IDS, logs.
    - **2.ORIENTAR**: Correlacion SIEM, Threat Intelligence, contexto del Activo.
    - **3.DECIDIR**: SOAR, Sistema de Tickets. 
        Playbooks guian la eleccion de la respuesta.
    - **4.ACTUAR**: Aislamiento, bloqueo de trafico, bloqueo de cuentas, forensia, Runbooks ejecutan la accion decidida.

> Las herramientas son ilustrativas y pueden cumplir distintos roles segun el contexto.

### RESUMEN 1

- La seguridad **no depende de solo soluciones tecnicas**, sino de **la interaccion entre tecnologia, procesos y personas**, y de la **capacidad de anticipar, detectar y responder** en entornos dinamicos.

- La mayoria de los incidentes explotan **vulnerabilidades conocidas** que no se corrigen a tiempo.

- La **complejidad y la interconexion** amplian la **superficie de ataque** y dificultan la deteccion y la atribucion.

- Los ataques deben entenderse como procesos (Kill Chain) y como interacciones dinamicas entre atacante y defensor (ciclo OODA).

- La ventaja no esta solo en **decidir rapido**, sino en **ejecutar efizcamente y desorganizar al adversario**.


## MITRE ATT&CK 🏆 Alcance y Proposito

Que es ATT&CK:
- Decribir **comportamientos obsevables de adversarios** en entornos reales.

- Analizar el comportamiento del atacante, independientemente de la tecnologia o plataforma utilizada.

- Organiza comportamientos del atacante en una estructura comun de tacticas y tecnicas, y los relaciona con grupos, software y campañas conocidas.

> ¿Que hace el atacante dentro de un sistema o red?

* Es importante aclarar que **no es ATT&CK**
    - No describe vulnerabilidades 
    - No mide impacto ni riesgo
    - No preescribe Soluciones de Seguridad, aunque orienta al diseño de deteccion y mitigacion.
    - No reemplaza CVE, CVSS ni analisis de Riesgo.

### Marco Conceptual y Frameworks

* Aplicar los frameworks de **MITRE** para:
    - Aprender a describir ataques con **lenguaje comun**.
    - Diferenciar **Comportamiento, vulnerabilidad y Patron**.
    - Aplicar estos patrones en un **ejercicio simple**.

* **Sin el uso de frameworks**
    - Descripciones informales
    - Informes incomparables
    - cada ataque parece unico.

### Necesidad de Frameworks de Analisis

- **Lenguaje Comun**:
    - Describir que hace un atacante.
    - Compara distintos incidentes bajo un mismo marco.

- **Separacion Conceptual**:
    - Diferenciar **comportamiento, vulnerabilidad y impacto**.
    - Ordenar el analisis tecnico.

- **Ataques Modernos**:
    - Basados en Comportamientos Estructurados.
    - Ejecutados por actores que planifican, adapta y reutilizan tecnicas.

- **Comunicacion Tecnica*:
    - Facilitar el intercambio entre equipos tecnicos ,de respuesta y de gestion.

#### El Ataque como Proceso

- La **Kill Chain** nos muestra que un ataque es un proceso.
- Los atacantes (**Red Team**):
    - Avanzan por fases encadenadas.
    - Se adaptan a las defensas.
    - Pueden fallar en una etapa sin abandonar el ataque.
    - EL foco esta en como avanzar por las distintas fases.

- Desde la Perspectiva Defensiva (**Blue Team**):
    - Identifican en que etapa es posible interrumpir la cadena.
    - Asumen que el usuario puede equivocarse.
    - El foco esta en controles tecnicos.

##### Fases del Ataque

Cyber KIll Chain --> Phishing --> Ransomware
**Modelos**:

- 1) **Reconocimiento**:
    - **Red Team**: Selecciona una Victima propensa a ingeneria Social.
    - **Blue Team**: Reduce superficie de ataque y refuerza concientizacion.

- 2) **Armamento**:
    - **Red Team**: Prepara el correo y el artefacto malicioso (**Payload**).
    - **Blue Team**: Aplica controles de Seguridad en correo electronico.

- 3) **Entrega**:
    - **Red Team**: Enviar el correo phishing (link/adjunto) a la victima.
    - **Blue Team**: Filtra phishing y valida autenticacion de dominio (*SPF/DKIM/DMARC*)

- 4) **Explotacion**:
    - **Red Team**: Provoca Interaccion del Usuario y dispara la ejecutacion inicial.
    - **Blue Team**: Aplica controles de ejecucion y prevencion de exploits (**Hardening / EDR*).

- 5) **Instalacion**:
    - **Red Team**: Descarga, instala y establece persistencia del malware.
    - **Blue Team**: Controla aplicaciones y persistencia (allowlisting / politicas)

- 6) **Comando y Control**:
    - **Red Team**: Se comunica con la infraestructura del atacante (C2).
    - **Blue Team**: Monitorea y Bloquea comunicaciones C2 (*Proxy / DNS / IDS*).

- 7) **Acciones Sobre el Objetivo**:
    - **Red Team**: Cifra archivos, exfiltra informacion y extorsiona a la organizacion.
    - **Blue Team**: Asegura babckups, respuestas a incidentes y resiliencia (*Contencion / Recuperacion*).



### Lenguaje Comun -> MITRE ATT&CK

**Framework -- MITRE ATT&CK**:
    
- **T1557 – Man-in-The-Middle**:    
    - **Defincion Informal**: El atacante se pone en el medio de la comunicacion.
    - **Traduccion Conceptual**: Intercepcion de trafico entre dos identidades sin quen lo perciban.

- **T1078 – Valid Accounts**:
    - **Defincion Informal**: Roban una clave y entran como si fueran el usuario.
    - **Traduccion Conceptual**: Uso indebido de credenciales validas para acceder al sistema.

- **T1041 – Exfiltracion Over C2 Channel**:
    - **Defincion Informal**: Se llevan informacion sensible de la empresa sin que nadie lo note.
    - **Traduccion Conceptual**: Transferencia no Authorizada de datos desde el entorno comprometido.

- **T1486 – Data Encrypted for Impact / Ramsonware**:
    - **Defincion Informal**: Cifran todos los archivos y piden un rescate.
    - **Traduccion Conceptual**: Impacto sobre la disponibilidad de la informacion mediante cifrado malicioso (*fase de impacto*)

