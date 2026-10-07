# Conceptos Generales
[Fuente: TutorialesProgramacionYa.com](https://www.tutorialesprogramacionya.com/ciberseguridad/pentestingyethicalhacking/tema0.html)
## Pentesting, Ethical Hacking y Seguridad Ofensiva
- Que es el Pentesting?

El pentesting es una evaluación autorizada que utiliza técnicas ofensivas para descubrir debilidades reales antes de que puedan ser aprovechadas por un atacante. Su valor no está en "romper" sistemas, sino en medir riesgo, demostrar impacto y orientar mejoras concretas.

Una prueba de penetración profesional no se queda en listar fallas detectadas por una herramienta. Intenta responder preguntas más útiles para una organización:

    - ¿Qué activos están expuestos?
    
    - ¿Qué vulnerabilidades son realmente explotables?
    
    - ¿Qué impacto tendría una explotación exitosa?
    
    - ¿Hasta dónde podría avanzar un atacante con un acceso inicial?
    
    - ¿Qué controles funcionan y cuáles pueden ser evadidos?
    
    - ¿Qué acciones de remediación deberían priorizarse?

> * Un pentest no es una demostración de habilidad técnica aislada. Es un trabajo de evaluación de riesgo que debe producir evidencia, criterio y recomendaciones aplicables.  

- Que es el Ethical Hacking ?

El ethical hacking aplica conocimientos ofensivos con permiso explícito, límites definidos y propósito defensivo. La diferencia entre una actividad profesional y una intrusión ilegal no está solo en la técnica, sino en la autorización, el alcance, la documentación, la responsabilidad y el objetivo de reducir riesgo.

Un hacker ético puede realizar tareas de reconocimiento, análisis, validación de vulnerabilidades, explotación controlada y documentación. Pero todas esas actividades deben estar acordadas previamente con el dueño del sistema o con quien tenga autoridad para autorizar la prueba.

| Aspecto | Hacking Etico | Actividad No autorizada |
| :--- | :--- | :--- |
| Permiso | Existe autorización explícita | No existe autorizacion Valida |
| Alcance | Está documentado y limitado | Se actúa sin límites acordados |
| Objetivo | Reducir riesgo y mejorar defensas | Obtener acceso, dañar, espiar o beneficiarse indebidamente |
| Evidencia | Se registra lo necesario para demostrar el hallazgo | Puede extraerse o alterar información sin control |
| Cierre | Se entrega reporte y se apoya la remediación | No hay rendición de cuentas profesional |

- Que es la Seguridad Ofensiva ?

La seguridad ofensiva es el conjunto de prácticas que evalúan la seguridad desde la perspectiva de un adversario. Incluye pentesting, red teaming, pruebas de ingeniería social autorizada, simulación de adversarios, análisis de exposición y validación de controles defensivos.

Su propósito es revelar debilidades que podrían pasar desapercibidas en auditorías puramente documentales o en revisiones defensivas. Al adoptar una mentalidad ofensiva, se busca entender cómo se encadenan fallas pequeñas hasta producir un impacto mayor.

- Un servicio expuesto puede revelar versiones vulnerables.

- Una credencial débil puede permitir acceso inicial.

- Una mala segmentación puede facilitar movimiento lateral.

- Un permiso excesivo puede permitir escalada de privilegios.

- Una baja visibilidad puede impedir detectar la intrusión a tiempo

### Objetivos de una Prueba de penetracion
Un pentest debe tener objetivos claros. Sin objetivos, la prueba se vuelve una colección de acciones técnicas sin dirección. Los objetivos permiten definir alcance, esfuerzo, profundidad y criterios de éxito.

- Identificar vulnerabilidades: descubrir fallas técnicas, configuraciones débiles y exposiciones innecesarias.

- Validar explotabilidad: comprobar si una vulnerabilidad puede aprovecharse en condiciones reales y controladas.

- Medir impacto: determinar qué podría lograr un atacante si explotara el hallazgo.

- Evaluar controles: observar si mecanismos como firewalls, EDR, WAF, MFA, SIEM o segmentación reducen el riesgo.

- Priorizar remediación: ordenar los hallazgos por riesgo real, no solo por severidad teórica.

- Mejorar la postura de seguridad: entregar recomendaciones técnicas y ejecutivas que puedan aplicarse.

### Que no es un Pentest
Comprender los límites del pentesting evita expectativas incorrectas. Una prueba de penetración no reemplaza todas las prácticas de seguridad ni garantiza que un sistema sea invulnerable.


- No es una garantía absoluta de seguridad.

- No es simplemente ejecutar un escáner automático y exportar un informe.

- No es una autorización para probar cualquier sistema fuera del alcance pactado.

- No es una actividad orientada a dañar, interrumpir servicios o exponer datos innecesariamente.

- No reemplaza hardening, monitoreo, gestión de parches, desarrollo seguro ni respuesta a incidentes.

- No debe confundirse con una auditoría de cumplimiento, aunque puede aportar evidencia técnica para ella.

>  El resultado de un pentest depende del alcance, el tiempo disponible, la información inicial, las restricciones operativas y la profundidad acordada.

### Pentesting, Analisis de Vulnerabilidades y Auditorias
Estos términos suelen mezclarse, pero no significan lo mismo. Diferenciarlos ayuda a elegir el tipo de evaluación adecuado para cada necesidad.


- Análisis de vulnerabilidades:
    - **Proposito**: Detectar debilidades conocidas y configuraciones inseguras.
    - **Resultado**: Listado de hallazgos con severidad y recomendaciones

- Pentesting:
    - **Proposito**: Validar vulnerabilidades explotables e impacto real
    - **Resultado**: Reporte con evidencia, rutas de ataque y prioridades

- Auditoria de Seguridad:
    - **Proposito**: Revisar controles contra políticas, normas o requisitos
    - **Resultado**: Brechas de cumplimiento y plan de corrección

- Red Team:
    - **Proposito**: Simular adversarios para evaluar detección y respuesta
    - **Resultado**: Lecciones sobre exposición, defensa y capacidad operacional

### Tipos de Prueba segun la Informacion Inicial
Una prueba puede diseñarse con distintos niveles de información entregada al equipo evaluador. Cada enfoque cambia el realismo, la velocidad y la profundidad del análisis.

- **Black box**: el equipo parte con poca o ninguna información interna. Es útil para simular una mirada externa, aunque puede consumir más tiempo en reconocimiento.

- **Gray box**: se entrega información parcial, como rangos, usuarios de prueba, documentación limitada o arquitectura general. Suele equilibrar realismo y eficiencia.

- **White box**: se entrega información amplia, como código fuente, diagramas, configuraciones o credenciales controladas. Permite una evaluación profunda y orientada a cobertura.

### Ambitos comunes del Pentesting
El pentesting puede aplicarse a distintos entornos. Cada ámbito requiere conocimientos, herramientas, riesgos y criterios de validación específicos.

- **Aplicaciones web:** autenticación, sesiones, inyecciones, controles de acceso, lógica de negocio y exposición de datos.

- **APIs:** autorización, validación de entradas, abuso de endpoints, tokens, rate limiting y exposición de objetos.

- **Redes internas:** segmentación, servicios expuestos, credenciales, movimiento lateral y privilegios.

- **Infraestructura externa:** servicios publicados, perímetro, DNS, certificados, VPN y superficies accesibles desde internet.

- **Active Directory:** identidades, permisos, delegaciones, rutas de privilegio y errores de configuración.

- **Cloud:** IAM, almacenamiento, redes, secretos, exposición pública y configuraciones débiles.

- **Wi-Fi:** cifrado, autenticación, redes invitadas, access points falsos y aislamiento.

- **Contenedores y Kubernetes**: imágenes, secretos, permisos, redes internas y políticas de despliegue.

### La importancie del Alcance
El alcance define qué se puede probar, qué queda fuera, con qué profundidad y bajo qué restricciones. Es uno de los elementos más importantes de una prueba profesional porque protege tanto al cliente como al equipo evaluador.

Un alcance claro debería indicar:

- Dominios, direcciones IP, aplicaciones, APIs, redes o cuentas incluidas.

- Fechas, horarios y ventanas permitidas para pruebas sensibles.

- Técnicas permitidas y técnicas prohibidas.

- Contactos de emergencia y procedimiento ante incidentes.

- Tratamiento de credenciales, datos sensibles y evidencias.

- Criterios para detener una prueba si aparece riesgo operativo.

>  En pentesting profesional, "tener permiso" no alcanza. El permiso debe estar documentado, delimitado y entendido por todas las partes. 

### Ética y responsabilidad profesional

El conocimiento ofensivo puede causar daño si se usa sin criterio. Por eso la ética no es un tema secundario del curso: es una condición de trabajo. 
Quien realiza un pentest puede ver información sensible, detectar fallas críticas o generar impacto operativo si actúa con descuido.

- Trabajar solo sobre objetivos autorizados.

- Respetar el alcance acordado.

- Minimizar impacto sobre disponibilidad y datos.

- No extraer más información de la necesaria para demostrar un hallazgo.

- Proteger evidencias, credenciales y documentos del proyecto.

- Informar hallazgos críticos con rapidez y por canales acordados.

- Eliminar accesos, archivos de prueba y artefactos al finalizar, según el procedimiento pactado.

### Riesgo, impacto y evidencia

Un hallazgo técnico solo es útil si se entiende su riesgo. Para eso hay que relacionar vulnerabilidad, probabilidad, impacto, contexto y evidencia. No todas las vulnerabilidades con nombre conocido tienen el mismo peso en todos los entornos.

Por ejemplo, una credencial débil en una cuenta sin privilegios y aislada no tiene el mismo impacto que una credencial débil con acceso administrativo a infraestructura crítica. Del mismo modo, un panel expuesto puede ser poco relevante si tiene autenticación robusta, o crítico si permite restablecer usuarios sin control.

La evidencia debe demostrar el hallazgo sin exponer datos innecesarios. Una captura parcial, un identificador de sistema, una respuesta controlada o una prueba de acceso limitada suelen ser suficientes para respaldar el reporte.

### Herramientas y Criterio Tecnico
Las herramientas son importantes, pero no sustituyen el criterio. Escáneres, proxies, frameworks, scripts, clientes de red y utilidades de enumeración aceleran el trabajo, aunque también pueden producir falsos positivos, falsos negativos o impactos no deseados si se usan sin entender qué hacen.

Un pentester profesional necesita interpretar resultados, validar hipótesis, leer documentación técnica, entender protocolos y adaptar la prueba al contexto. La herramienta muestra una posibilidad; el criterio determina si esa posibilidad representa riesgo real.

- **Recurso**: Escáneres
    - **Uso esperado**: Detectar exposición y vulnerabilidades conocidas
    - **Riesgo de uso incorrecto**: Ruido, falsos positivos o carga excesiva

- **Recurso**: Proxies Web
    - **Uso esperado**: Analizar peticiones, sesiones y flujos de aplicación
    - **Riesgo de uso incorrecto**: Modificar datos sin control o perder trazabilidad

- **Recurso**: Frameworks
    - **Uso esperado**: Validar pruebas conocidas en entornos autorizados
    - **Riesgo de uso incorrecto**: Ejecutar módulos con efectos no entendidos

- **Recurso**: Scripts Propios
    - **Uso esperado**: Automatizar tareas repetitivas o validaciones específicas
    - **Riesgo de uso incorrecto**: Errores lógicos, impacto operativo o exposición de datos

### Cómo se mide el éxito de un pentest

El éxito de una prueba de penetración no se mide por la cantidad de sistemas comprometidos ni por la espectacularidad de una demostración. Se mide por la utilidad del resultado para reducir riesgo.

- El alcance fue respetado.

- Los hallazgos son reproducibles y están bien evidenciados.

- La severidad refleja impacto real en el contexto del cliente.

- Las recomendaciones son claras, priorizadas y accionables.

- Los riesgos críticos fueron comunicados a tiempo.

- La organización entiende qué debe corregir y por qué.

- El retesting permite confirmar mejoras.

### Qué debes recordar de este tema

- El pentesting es una evaluación autorizada orientada a descubrir riesgo real.
- El ethical hacking usa técnicas ofensivas con permiso, límites y propósito defensivo.
- La seguridad ofensiva permite validar controles desde la perspectiva de un adversario.
- Un pentest profesional necesita alcance, metodología, evidencia y reporte accionable.
- Las herramientas ayudan, pero el criterio técnico y ético define la calidad del trabajo.

## Ética, legalidad, autorización y reglas de compromiso
Una prueba de penetración solo es profesional cuando se realiza con autorización clara, límites definidos y responsabilidad sobre el impacto. La técnica ofensiva sin marco ético y legal deja de ser pentesting y se convierte en riesgo para todas las partes.

- La diferencia entre capacidad técnica y permiso?
Tener conocimientos para encontrar una vulnerabilidad no significa tener derecho a probarla. En ciberseguridad ofensiva, la capacidad técnica siempre debe estar subordinada al permiso explícito y al alcance acordado.

> La pregunta correcta no es "¿puedo hacerlo técnicamente?", sino "¿estoy autorizado a hacerlo, dentro de qué límites y con qué objetivo?"

### Que Significa actuar Eticamente

La ética profesional en pentesting implica actuar de forma responsable aunque se tenga acceso a información sensible o a debilidades críticas. No basta con cumplir una lista mínima de requisitos legales: también hay que minimizar daño, respetar la confianza recibida y entregar valor defensivo.

- Trabajar únicamente sobre objetivos autorizados.

- Respetar el alcance incluso si aparecen sistemas relacionados.

- Usar la menor intrusión necesaria para validar un hallazgo.

- No divulgar información sensible fuera de los canales acordados.

- No conservar credenciales, datos o evidencias más tiempo del necesario.

- Informar con rapidez hallazgos críticos que puedan requerir acción inmediata.

- Evitar pruebas que puedan afectar disponibilidad si no fueron aprobadas expresamente.

### Legalidad: Porque no alcanza la Buena Intencion
Una persona puede tener intención de ayudar y aun así actuar ilegalmente si prueba sistemas sin autorización. Las leyes sobre acceso indebido, interceptación, daño informático, privacidad y protección de datos varían por país, pero suelen tener un punto común: acceder, alterar, interceptar o probar sistemas ajenos sin permiso puede traer consecuencias serias.

El pentesting profesional requiere autorización verificable del dueño del activo o de una persona con autoridad suficiente. En entornos corporativos, esa autorización debe estar respaldada por contrato, orden de trabajo, carta de autorización o documento equivalente.

- **Situacion**: Encontrar una vulnerabilidad en un sitio público
    - ***Riesgo***: Probarla sin permiso puede ser acceso indebido.
    - ***Conducta Profesional***: Buscar un canal responsable de reporte o un programa autorizado.

- **Situacion**: Un empleado pide probar un sistema interno 
    - ***Riesgo***: Puede no tener autoridad para autorizar la prueba.
    - ***Conducta Profesional***: Validar autorización con responsables formales.

- **Situacion**: Un dominio pertenece a un tercero o proveedor
    - ***Riesgo***: El cliente puede no controlar ese activo
    - ***Conducta Profesional***: Excluirlo o pedir autorización específica del dueño

- **Situacion**: Una prueba puede afectar disponibilidad
    - ***Riesgo***: Puede causar interrupción de negocio
    - ***Conducta Profesional***: Solicitar aprobación explícita y definir ventana controlada

### Autorizacion Formal
La autorización formal es la evidencia de que la prueba fue aprobada por quien corresponde. Debe existir antes de iniciar cualquier actividad activa sobre el objetivo. En un trabajo real, la autorización protege al cliente, al equipo técnico y a terceros que podrían verse afectados.

Una autorización útil debería incluir:
    
- Nombre de la organización que autoriza.

- Responsable o representante con capacidad de aprobar la prueba.

- Equipo o persona autorizada para ejecutar la evaluación.

- Activos incluidos y excluidos.

- Fechas de inicio y fin.

- Actividades permitidas y restricciones relevantes.

- Canales de comunicación y contactos de emergencia.

>  Si el permiso es verbal, ambiguo o informal, no es una base sólida para ejecutar una prueba de penetración profesional. 

### EL Alcance de la Prueba
El alcance define qué se puede evaluar. Puede incluir dominios, direcciones IP, aplicaciones, APIs, redes internas, cuentas de prueba, repositorios, servicios cloud, entornos de desarrollo o segmentos específicos de infraestructura.

También debe indicar qué queda fuera. Esta parte es tan importante como la lista de activos incluidos, porque muchos incidentes durante pentests ocurren por asumir que un sistema relacionado también estaba autorizado.

    
- **Incluido**: objetivos que pueden probarse bajo las condiciones acordadas.

- **Excluido**: sistemas que no deben tocarse, aunque estén relacionados con el objetivo.

- **Condicionado**: actividades permitidas solo en ciertos horarios, con aprobación previa o con supervisión.

- **Prohibido**: acciones que no se realizarán bajo ninguna circunstancia durante la prueba.

### Reglas de compromiso
Las reglas de compromiso, conocidas también como Rules of Engagement, describen cómo se ejecutará la prueba. Traducen la autorización y el alcance en condiciones operativas concretas.

Estas reglas evitan malentendidos durante la evaluación y sirven como referencia cuando aparece una situación no prevista.
Reglas:
- Ventanas de prueba:
    - **Que Define**: Cuándo se pueden ejecutar actividades.
    - **Ejemplo**: Solo fuera del horario comercial para pruebas de mayor carga.

- **Intensidad**: 
	- **Que Define**: Nivel aceptado de escaneo o validación
    - **Ejemplo**: Escaneos moderados, sin pruebas de denegación de servicio

- **Credenciales**:
  	- **Que define**: Qué cuentas pueden utilizarse
    - **Ejemplo**: Usuarios de prueba con roles definidos

- **Datos sensibles**: 	
    - **Que define**: Cómo se tratará la información encontrada 
    - **Ejemplo**: Registrar evidencia mínima y no descargar bases completas

- **Comunicación**: 	
    - **Que Define**: A quién avisar ante hallazgos críticos o incidentes
    - **Ejemplo**: Canal directo con responsable técnico y responsable de negocio.

### Actividades permitidas, restringidas y prohibidas

No todas las técnicas de seguridad ofensiva tienen el mismo nivel de riesgo. Algunas son de bajo impacto, otras pueden afectar disponibilidad o confidencialidad si se aplican sin control. 

Por eso conviene clasificarlas antes de empezar.

- **Permitidas**: reconocimiento autorizado, enumeración, pruebas de autenticación con cuentas de prueba, validación controlada de vulnerabilidades.

- **Restringidas**: explotación sobre producción, pruebas con carga elevada, ingeniería social, envío de correos simulados, acceso a datos reales.

- **Prohibidas**: denegación de servicio no aprobada, destrucción de datos, persistencia no acordada, exfiltración masiva, pruebas sobre terceros no autorizados.

La clasificación debe ser específica. Decir "se permite pentesting" es demasiado amplio. Es mejor indicar qué técnicas concretas se aceptan, bajo qué condiciones y con qué límites.

### Manejo de Datos Sensibles
Durante una prueba pueden aparecer datos personales, credenciales, documentos internos, configuraciones, tokens, llaves, registros o información de clientes. 

El equipo evaluador debe tratar esa información con el mismo cuidado que tendría el dueño del sistema.

- Recolectar solo la evidencia necesaria para demostrar el hallazgo.

- Evitar capturas que muestren datos personales o secretos completos si no son imprescindibles.

- Almacenar evidencias en medios protegidos y con acceso limitado.

- No compartir hallazgos por canales informales o inseguros.

- Definir plazo y forma de eliminación de evidencias al finalizar el proyecto.

- Registrar el tratamiento de información sensible en el reporte o en anexos controlados.

> En un reporte profesional, la evidencia debe ser suficiente para probar el riesgo, pero no debe aumentar innecesariamente la exposición de información sensible. 

### Coordinación con equipos defensivos

Según el objetivo de la prueba, el equipo defensivo puede estar informado o no informado. Ambas opciones son válidas si están acordadas. Si se busca evaluar detección y respuesta, puede limitarse la información compartida. Si se busca reducir riesgo técnico con mínimo impacto, conviene coordinar estrechamente con operaciones.

Modelo:
    - **Informado**: 
        - **Caracteristicas**: Defensa y operaciones conocen fechas, origen y alcance.
        - **Uso Comun**: Pentests técnicos con bajo riesgo operativo.

    - **Parcialmente Informado**:
        - **Caracteristicas**: Algunos responsables conocen la prueba, otros no.
        - **Uso Comun**: Evaluaciones con componente de detección.

    - **No informado para defensa**:
        - **Caracteristicas**: Solo un grupo reducido sabe de la actividad.
        - **Uso Comun**: Ejercicios tipo red team, con autorización ejecutiva clara.

### Manejo de hallazgos críticos
No todos los hallazgos deben esperar al reporte final. Si durante la prueba se descubre una exposición crítica, una credencial activa, un acceso administrativo indebido o una vulnerabilidad que pueda ser explotada de inmediato por terceros, debe comunicarse por el canal acordado.

Un aviso temprano debería incluir:

- Descripción breve del hallazgo.
- Activo afectado.
- Impacto potencial.
- Evidencia mínima.
- Recomendación inmediata de contención.
- Estado de la prueba: si continúa, se pausa o requiere aprobación adicional.

### Límites sobre explotación y post-explotación

La explotación controlada sirve para demostrar impacto, pero debe tener límites. No siempre es necesario obtener el máximo privilegio posible o acceder al mayor volumen de datos para probar un riesgo. La validación debe detenerse cuando la evidencia ya demuestra el problema de forma suficiente.

La post-explotación también requiere autorización explícita. Acceder a sistemas internos, revisar rutas de privilegio, probar movimiento lateral o analizar datos disponibles puede ser útil, pero debe estar contemplado en el alcance y en las reglas de compromiso.

- Definir qué nivel de acceso se puede intentar validar.

- Evitar cambios persistentes salvo que estén aprobados.

- No alterar configuraciones productivas sin autorización.

- No acceder a información sensible si una evidencia menos intrusiva alcanza.

- Documentar todo artefacto creado durante la prueba.

### Terceros, proveedores y activos compartidos

Muchos entornos modernos dependen de servicios externos: nube, CDN, proveedores de identidad, plataformas de correo, hosting, pasarelas de pago, sistemas SaaS y enlaces con socios. Que una organización use un servicio no significa que tenga permiso para probar toda la infraestructura del proveedor.

Cuando el objetivo incluye componentes de terceros, hay que verificar condiciones contractuales, políticas de uso aceptable y autorizaciones adicionales. Algunos proveedores permiten pruebas bajo reglas específicas; otros requieren notificación previa o limitan técnicas.

> Un activo técnico puede estar relacionado con el cliente y aun así no estar legalmente autorizado para pruebas. La propiedad y la autorización deben verificarse. 

### Documentación mínima antes de comenzar

Antes de ejecutar la primera actividad activa, el proyecto debería tener documentación mínima. No es burocracia: es control de riesgo.

- Contrato, orden de trabajo o carta de autorización.

- Alcance técnico con activos incluidos y excluidos.

- Reglas de compromiso.

- Fechas, horarios y ventanas de prueba.

- Contactos técnicos, de negocio y de emergencia.

- Procedimiento de comunicación de hallazgos críticos.

- Condiciones de manejo, almacenamiento y eliminación de evidencias.

- Criterios de pausa o cancelación de actividades.

### Ejemplo de matriz de autorización y alcance

Una matriz simple ayuda a evitar ambigüedades. Puede adaptarse al tamaño del proyecto, pero siempre debe dejar claro qué se puede hacer y qué no.

| Elemento | Incluido | Condicion | Restricion |
| :--- | :--- | :--- | :--- |
| **Aplicación web principal** | Sí | Pruebas con usuarios de laboratorio | No modificar datos reales |
| **API pública** | Sí | Rate limit acordado | No realizar carga masiva |
| **Infraestructura de proveedor externo** | No | Requiere autorización separada | No escanear rangos del proveedor |
| **Ingeniería social** | Condicionada | Solo con aprobación ejecutiva específica | No contactar clientes finales |

### Errores frecuentes

- Comenzar pruebas activas sin autorización escrita.

- Asumir que un subdominio o proveedor relacionado está dentro del alcance.

- No definir ventanas de prueba para actividades de mayor riesgo.

- Guardar evidencias con datos sensibles sin protección adecuada.

- Comunicar hallazgos críticos solo al final del proyecto.

- Usar herramientas agresivas sin entender su impacto.

- No documentar artefactos, cuentas o cambios generados durante la evaluación.

### Qué debes recordar de este tema

- La autorización formal es obligatoria antes de ejecutar pruebas activas.

- El alcance define qué puede probarse y qué queda fuera.

- Las reglas de compromiso convierten el alcance en condiciones operativas concretas.

- La ética exige minimizar daño, proteger datos y comunicar riesgos con responsabilidad.

- Los terceros y proveedores requieren especial cuidado porque el cliente puede no tener autoridad sobre ellos.

- Un pentest profesional se documenta antes, durante y después de la ejecución.

## Metodologias Profesionales (PTES, OWASP, NIST)
Una metodología convierte una prueba de penetración en un proceso repetible, ordenado y defendible. Ayuda a cubrir lo importante, evitar improvisaciones peligrosas y comunicar resultados con criterios claros de riesgo e impacto.

- Por que Usar una metodologia ?

Sin metodología, una prueba puede convertirse en una secuencia desordenada de herramientas. Eso suele producir reportes incompletos, hallazgos mal priorizados y baja trazabilidad entre objetivo, técnica, evidencia e impacto.

Una metodología aporta:

- Orden para planificar, ejecutar y cerrar la prueba.
- Cobertura mínima de áreas críticas.
- Criterios para decidir profundidad y prioridad.
- Lenguaje común entre evaluadores, clientes y equipos defensivos.
- Base documental para justificar alcance, límites y resultados.
- Repetibilidad para comparar evaluaciones a lo largo del tiempo.

> La metodología no reemplaza al criterio profesional. Lo encuadra para que el trabajo sea completo, explicable y útil. 

- Que debe resolver un metodologia de Pentesting ?

| Momento | Pregunta Clave | Resultado Esperado |
| :--- | :--- | :--- | 
| Antes de Probar | ¿Que se evalua y bajo que limites? | Alcance, Reglas de Compromiso y plan de trabajo | 
| Durante el Reconocimiento | ¿Que informacion permite entender la superficie de ataque? | Mapas de activos |
| Durante la Validacion | ¿Que vulnerabilidades son explotables y con que impacto? | Evidencia controlada y analisis de Riesgo |
| Durante el Reporte | ¿Que debe corregirse primero y porque? | Hallasgos priorizados y recomendaciones accionables |
| Despues del Cierre | ¿Las correcciones fueron efectivas? | Retesting y mejora continua |

### PTES (Penetration Testing Execution Standard)
PTES es un estándar orientado a ordenar la ejecución de pruebas de penetración. Su valor está en presentar una visión completa del ciclo de trabajo, desde la interacción inicial con el cliente hasta el reporte final.

Las fases mas conocidas de PTES:
    
- **Pre-engagement interactions**: definición previa de alcance, objetivos, restricciones y reglas.

- **Intelligence gathering**: recopilación de información sobre el objetivo.

- **Threat modeling**: análisis de amenazas relevantes para el contexto evaluado.

- **Vulnerability analysis**: identificación y evaluación de debilidades.

- **Exploitation**: validación controlada de vulnerabilidades explotables.

- **Post exploitation**: análisis del valor del acceso obtenido y del posible impacto.

- **Reporting**: comunicación técnica y ejecutiva de hallazgos.

> PTES es especialmente útil para pruebas amplias, porque obliga a pensar en negocio, amenazas, impacto y documentación, no solo en explotación.

### Como aplicar PTES en un pentest Real
Aplicar PTES no significa seguir una lista de tareas de forma mecánica. Significa usar sus fases para no perder dimensiones importantes del trabajo.

- **En la fase previa**, se acuerdan activos, límites, horarios, contactos y restricciones.
- **En inteligencia**, se recopila información pública y técnica sobre el objetivo.
- **En modelado de amenazas**, se identifican escenarios plausibles: robo de credenciales, exposición de datos, escalada o interrupción.
- **En análisis de vulnerabilidades**, se correlacionan hallazgos de herramientas con revisión manual.
- **En explotación**, se valida impacto con el menor nivel de intrusión necesario.
- **En post-explotación**, se determina qué significa realmente el acceso obtenido.
- **En reporte**, se prioriza por riesgo y se explica la ruta de ataque.

>  PTES ayuda a evitar el error de empezar directamente por herramientas sin comprender objetivos, amenazas y contexto.

### OWASP y su rol en las pruebas de aplicaciones
OWASP es una referencia central para seguridad de aplicaciones. Aunque es muy conocido por el OWASP Top 10, su valor para pentesting web y de APIs va más allá de esa lista.

Para pruebas profesionales, OWASP aporta guías, categorías de riesgo, criterios de verificación y documentación útil para evaluar aplicaciones web, APIs, autenticación, autorización, sesiones, entrada de datos, lógica de negocio y configuración segura.

- **OWASP Top 10**: lista de categorías de riesgos frecuentes y relevantes en aplicaciones web.
- **OWASP Web Security Testing Guide**: guía práctica para organizar pruebas de seguridad web.
- **OWASP API Security Top 10**: referencia para riesgos comunes en APIs.
- **OWASP Aplication Security Verification Standard**: estándar de verificación para controles de seguridad en aplicaciones.

#### OWASP Top 10
El OWASP Top 10 es útil para comunicar riesgos frecuentes, pero no debe tratarse como una lista completa de todo lo que puede fallar en una aplicación. Sirve como punto de partida, no como techo metodológico.

Un pentest web que solo revise las categorías del Top 10 puede omitir fallas específicas de lógica de negocio, integraciones internas, reglas de autorización particulares, abuso de flujos o condiciones propias del contexto.
| Uso Correcto | Uso Incorrecto |
| :--- | :--- | 
| Tomarlo como marco de riesgos comunes	| Creer que todo riesgo web está dentro del Top 10 |
| Complementarlo con pruebas manuales | Marcar casillas sin validar impacto real |
| Usarlo para explicar hallazgos al cliente	| Reemplazar la metodología completa por una lista corta |
| Adaptarlo al tipo de aplicación | Aplicarlo igual a un sitio simple, una API crítica y un sistema financiero |

#### OWASP WSTG (Web Security Testing Guide)
s
#### OWASP ASVS (Aplication Security Verification Standard)