<div align="center">

<img src="img/Logo_Pontificia_Javeriana.png" alt="Pontificia Universidad Javeriana Cali" width="350">

<br><br>

# Taller unidad 1: Planeación Estratégica

### Actividad 1

### Caso: Centrales Eléctricas del Norte de Santander (CENS) – Grupo EPM

<br><br>

**Integrantes:**

Edwin Heano Ochoa

Catherine Salazar Pupiales

Edwin Silva Salas

<br>

**Profesora:**

Mónica Rodríguez

<br><br>

**Gerencia en proyectos de ciencia de datos**

Módulo 1 – Unidad 1

Maestría en Ciencia de Datos

Pontificia Universidad Javeriana Cali

<br>

Santiago de Cali, octubre de 2026

</div>

<div style="page-break-after: always;"></div>

---

## Grado de alistamiento de la empresa para realizar una planeación

### 1. Evaluación del grado de alistamiento

Se diligenció el *Readiness Assessment Questionnaire* para Centrales Eléctricas del Norte de Santander S.A. E.S.P. (CENS – Grupo EPM), con base en información pública de la empresa (informes de sostenibilidad 2024–2025, plan de inversiones 2025 e informes de control interno).

*"Questionnaire adapted from proprietary materials developed by Farnum Alston and The Crescent Company, Bozeman, Montana."*

#### Valor obtenido

**Puntaje total: 98 / 125 (rango 75–100).**

| Sección | Puntaje ajustado | Máximo |
|---|:---:|:---:|
| Misión | 9 | 10 |
| Grupos de interés | 9 | 10 |
| Liderazgo | 12 | 15 |
| Comunicación y TI | 8 | 10 |
| Deliberación y toma de decisiones | 11 | 15 |
| Presupuesto y recursos | 3 | 5 |
| Estructura y procesos | 13 | 20 |
| Cultura | 19 | 25 |
| Implementación | 14 | 15 |
| **Total** | **98** | **125** |

El detalle del cálculo (respuesta a cada una de las 25 preguntas, su justificación y fuente, y la inversión de puntajes) puede consultarse en el cuestionario diligenciado: [esilvas1.github.io/Planeacion_Estrategica/Questionnaire.html](https://esilvas1.github.io/Planeacion_Estrategica/Questionnaire.html).

#### Comentario de los resultados

CENS obtuvo 98 de 125 puntos, ubicándose en el rango 75–100, a tres puntos del nivel superior. Esto indica una organización sólida, con misión clara, grupos de interés bien identificados, gestión orientada al desempeño y capacidad de implementación, pero con problemas significativos que limitan su potencial. Las principales brechas están en presupuesto y recursos (liquidez afectada por subsidios no girados), estructura y procesos (incentivos, meritocracia y flexibilidad) y la rapidez para atender asuntos crónicos como las pérdidas de energía en el Catatumbo. Estos asuntos deberían ser el foco de un esfuerzo de planeación estratégica dirigido.

## Estado actual

### 1. Matriz DOFA

La matriz se construyó para la capacidad de analítica y TI de CENS, que sería la base de su unidad de ciencia de datos. Las fortalezas y debilidades son factores internos; las oportunidades y amenazas, externos. La información proviene del sitio web de [CENS](https://www.cens.com.co/), del Informe de Sostenibilidad 2025 y de los resultados del cuestionario de alistamiento.

| | Factor | Evidencia |
|---|---|---|
| **F1** | Direccionamiento estratégico claro y alineado con el Grupo EPM. | Propósito y estrategia publicados; Misión 9/10 en el cuestionario. |
| **F2** | Cultura de gestión por indicadores y datos. | Seguimiento de SAIDI, SAIFI y pérdidas; 16 escenarios de flujo de caja; gestión de activos basada en riesgos (ISO 55001). |
| **F3** | Capacidad propia de desarrollo e innovación. | Desarrollos internos en Azure y Copilot Studio; primer lugar en los Premios CIER 2026 (SafeGRID) y proyecto de digitalización CIM&DESS. |
| **F4** | Talento comprometido y buen clima laboral. | Certificación Great Place to Work (81 %). |
| **D1** | Sistemas centrales en transición. | El ERP actual tiene riesgos tecnológicos; el reemplazo (Saphiro) sale en vivo en 2027. |
| **D2** | Recursos limitados para nuevas iniciativas. | Presupuesto y recursos 3/5 en el cuestionario; presión sobre la liquidez. |
| **D3** | Estructura poco flexible para crear nuevas capacidades. | Estructura y procesos 13/20; dependencia de lineamientos del Grupo EPM. |
| **D4** | Sin una unidad formal de ciencia de datos ni una política de gobierno de datos propia visibles. | No se encontró evidencia pública y se afirma con el personal que solo existe un area de TI, no un area oficial de Ceincia de Datos |
| **O1** | Analítica para reducir pérdidas de energía. | Pérdidas del 14,30 % (47,84 % en el Catatumbo); 29,85 GWh recuperados en 2025. |
| **O2** | Transición energética. | Generación distribuida (CREG 174 de 2021), energía solar y movilidad eléctrica exigen pronósticos y analítica de red. |
| **O3** | Sinergias con el Grupo EPM. | Proyectos con alcance de grupo e intercambio de buenas prácticas entre filiales. |
| **O4** | Más datos de clientes por canales digitales. | Migración creciente de usuarios hacia la autogestión digital. |
| **A1** | Orden público en el Catatumbo. | Limita el acceso a la zona, la toma de datos en campo y el recaudo. |
| **A2** | Liquidez afectada por factores externos. | Subsidios no girados por la Nación y deuda de la opción tarifaria. |
| **A3** | Exigencias regulatorias crecientes. | Metas de calidad y pérdidas de la CREG; ley de protección de datos personales (Ley 1581 de 2012). |
| **A4** | Ciberseguridad y competencia por talento. | Infraestructura crítica expuesta a ataques; alta demanda de científicos de datos en el mercado. |

**Estrategias derivadas del cruce de factores**

| Cruce | Estrategia |
|---|---|
| **FO** (F2, F3 + O1) | Desarrollar modelos de detección de pérdidas y fraude con los datos de medición y la plataforma Azure existente. |
| **DO** (D4 + O3) | Formalizar una unidad de ciencia de datos y una política de gobierno de datos apoyadas en los lineamientos del Grupo EPM. |
| **FA** (F2 + A1) | Usar analítica remota (medición inteligente, telemetría) para gestionar zonas con acceso restringido. |
| **DA** (D2 + A2) | Priorizar proyectos analíticos de retorno rápido y medible para justificar su financiación. |

### 2. Modelización y mapeo de capacidades del equipo de TI

Como CENS no cuenta con un área oficial de ciencia de datos (D4), el mapeo se hizo sobre el equipo de TI. Siguiendo el enfoque de [mapa de capacidades de negocio](https://capstera.com/knowledge-hub/articles/business-capability-map-example), las capacidades se agrupan en dominios y describen *qué* hace el equipo, independientemente de quién o con qué herramienta lo haga. La madurez se estimó a partir de la información pública de la empresa y de la DOFA, con una escala de 1 (inicial) a 5 (optimizada).

| Dominio | Capacidad | Madurez (1–5) | Importancia | Evidencia |
|---|---|:---:|:---:|---|
| Estrategia y gobierno | Gobierno y calidad de datos | 1 | Alta | Sin política de gobierno de datos propia visible (D4). |
| Estrategia y gobierno | Gestión de la demanda analítica | 1 | Media | No existe un área que reciba y priorice necesidades de analítica. |
| Datos e infraestructura | Plataforma de datos en la nube | 3 | Alta | Desarrollos internos en Azure y Azure DevOps. |
| Datos e infraestructura | Integración de sistemas centrales | 2 | Alta | ERP en transición hacia Saphiro (2027). |
| Datos e infraestructura | Seguridad y protección de datos | 3 | Alta | Política de protección de datos personales publicada; infraestructura crítica. |
| Analítica | Reportes e indicadores de gestión | 4 | Alta | Seguimiento de SAIDI, SAIFI, pérdidas y metas financieras. |
| Analítica | Modelos predictivos y de riesgo | 2 | Alta | Gestión de activos basada en riesgos (ISO 55001) y escenarios de flujo de caja. |
| Analítica | Detección de pérdidas y fraude | 2 | Alta | 29,85 GWh recuperados en 2025, sin evidencia de modelos analíticos. |
| Analítica | IA y automatización | 2 | Media | Agentes en Copilot Studio y automatización de procesos internos. |
| Entrega de valor | Innovación y desarrollo de soluciones | 4 | Media | CENSNNOVA; primer lugar en los Premios CIER 2026 (SafeGRID). |
| Entrega de valor | Canales digitales para clientes | 3 | Media | Crecimiento de la autogestión digital de los usuarios. |

**Brechas prioritarias.** Las capacidades con importancia alta y madurez de 1 a 2 son el gobierno y la calidad de datos, la integración de sistemas centrales, los modelos predictivos, la detección de pérdidas y la formación en datos. Estas brechas confirman la estrategia DO de la matriz DOFA: formalizar una unidad de ciencia de datos con una política de gobierno de datos, y la FO: aprovechar la plataforma en la nube y la fortaleza en reportes para avanzar hacia modelos predictivos de pérdidas.

### 3. Revisión de la pila tecnológica

Como CENS todavía no tiene una unidad de ciencia de datos (D4), se revisó la pila del área de TI, que es la que esa unidad heredaría el día que se cree. Casi toda la información sale del Informe de Sostenibilidad 2025 y del sitio web de la empresa.

#### a. ¿Cuál es?

La pila se organizó por capas, con la misma lógica del artículo de referencia:

| Capa | Tecnología | Para qué se usa |
|---|---|---|
| Infraestructura y nube | Azure Cloud, Azure DevOps, red corporativa del Grupo EPM, 133,7 km de fibra óptica entre subestaciones, Wi-Fi 7 | Alojar los desarrollos propios y conectar a CENS con los sistemas que comparten las filiales de energía. |
| Sistemas centrales | ERP actual, en transición a SAP S/4HANA (proyecto Saphiro); SAP Ariba; Mercurio; Sinergia | Finanzas, compras, mantenimiento de activos, correspondencia y riesgos. |
| Tecnología de operación | SCADA Siemens SP7 con aplicaciones DMS/OMS, reconectadores, telemedida | Operar la red en tiempo real desde el Centro de Control. |
| Ingeniería y red | Hexagon NetWorks, AutoCAD, PLS-CADD, PLS-POLE/TOWER, PVsyst | Diseñar redes, llevar el inventario de infraestructura y hacer estudios solares. |
| Datos y analítica | No hay una plataforma de datos declarada. Hay esfuerzos puntuales: SafeGRID (pérdidas), una plataforma de pronóstico de demanda con *machine learning* y el visualizador DESS sobre el Modelo Común de Información (CIM). | Análisis por proyecto, no como un servicio corporativo. |
| IA y automatización | Microsoft 365 Copilot, Copilot Studio (25 agentes), RPA (19 automatizaciones), fábrica digital interna (9 aplicaciones, como PRESUPUC, PRIORIX y SIGELEC) | Automatizar tareas y construir soluciones a la medida. |
| Canales al cliente | Sede electrónica, pagos con Placetopay, Chatbot Lucía, bot de WhatsApp, facturación electrónica | Atención, trámites y pagos. |
| Seguridad | SGSI bajo ISO 27001, firewall para subestaciones críticas, 95,95 % de madurez en ciberseguridad en el nivel MIL2 | Proteger la información y los ciberactivos. |

#### b. ¿Se está utilizando?

Depende de la capa. Lo operativo y lo comercial se usa todos los días; lo relacionado con datos y analítica apenas empieza.

| Tecnología | Estado | Qué muestra el uso |
|---|---|---|
| SCADA SP7, DMS/OMS | En uso | Es la base del Centro de Control. EPM contrata el soporte con Siemens a nombre de CENS. |
| ERP actual | En uso, con riesgo | Sigue funcionando mientras llega SAP S/4HANA, previsto para 2027. |
| SAP Ariba | En uso | Los proveedores se inscriben y actualizan sus datos allí. En 2025 se acompañó a 32 empresas. |
| Microsoft 365 y Copilot | En adopción | 419 personas asistieron al taller de Copilot Chat y 40 construyeron agentes. |
| Azure Cloud y DevOps | Uso inicial | Se habilitaron con el nuevo contrato de licencias de 2025. |
| Fábrica digital interna | En uso | 6 de los 9 desarrollos ya están en producción, con un ahorro de COP$ 690 millones. |
| RPA | Subutilizado | El ahorro real fue de COP$ 203 millones, frente a COP$ 447 millones proyectados: menos de la mitad. |
| SafeGRID | Piloto | Prototipo en campo (TRL 7) que recupera en promedio más de 1.000 kWh/mes por usuario. |
| Medición avanzada (AMI) | No implementada | El propio informe reconoce atrasos en los pilotos. |

El caso más llamativo es AMI. Sin medidores inteligentes, buena parte de la analítica de pérdidas y de demanda propuesta en la DOFA no tiene con qué alimentarse.

#### c. ¿Hay superposición?

Sí, en varios frentes. Hoy no es grave, pero lo será si nadie lo ordena antes de 2027.

- **Desarrollos propios frente a SAP S/4HANA.** Aplicaciones como PRESUPUC (presupuesto) o el control de activos fijos automatizado con RPA cubren funciones que SAP va a asumir. Cuando SAP entre en operación habrá que decidir qué se apaga y qué se integra.
- **Tres caminos para automatizar.** RPA, agentes en Copilot Studio y desarrollos en Azure resuelven el mismo tipo de necesidad. Cada área puede escoger el suyo y terminar con soluciones parecidas que nadie mantiene en conjunto.
- **Varios bots para el cliente.** Conviven el Chatbot Lucía, el bot de WhatsApp, el chat en línea y un nuevo desarrollo interno llamado CHATBOT.
- **Gestión del trabajo de campo.** El Grupo EPM está comprando una solución FSM, SAP traerá su propio módulo de mantenimiento y CENS ya automatizó con RPA el cierre de órdenes de trabajo.

#### d. ¿La pila es interoperable con el resto de la organización?

A medias. En infraestructura y herramientas de oficina, sí. En datos, todavía no.

Hay puntos a favor. CENS actualizó sus enrutadores para conectarse con la red del Grupo EPM y usar las soluciones que comparten las filiales. Microsoft 365, Azure y Copilot pertenecen al mismo ecosistema, así que comparten usuarios, permisos y almacenamiento. Y la fábrica digital dice construir sus desarrollos pensando en que se integren con las demás aplicaciones.

El problema está en los datos. No se encontró evidencia de una bodega ni de un lago de datos que reúna la información del SCADA, del sistema comercial y del ERP. SafeGRID, el pronóstico de demanda y DESS funcionan como islas. Además, piezas clave como el SCADA y el ERP se administran desde EPM, lo que le resta a CENS control sobre cómo y cuándo accede a esos datos.

En pocas palabras, una futura unidad de ciencia de datos encontraría buenas herramientas, pero tendría que empezar por tender puentes entre ellas. Esto coincide con la brecha de integración de sistemas centrales (madurez 2) del mapa de capacidades y con la estrategia DO de la matriz DOFA.

### 4. Política de gobernanza de los datos

Hoy CENS solo tiene una política formal sobre datos: el [Lineamiento de Protección de Datos Personales](https://www.cens.com.co/institucional/proteccion-de-datos-personales) (Decisión Empresarial 1100-032-2013), que cumple la Ley 1581 de 2012. Este lineamiento ya incluye un principio de calidad del dato: debe ser veraz, completo, exacto, comprobable y actualizado. También incluye un principio de seguridad, apoyado en el SGSI bajo ISO 27001. Sin embargo, solo cubre datos personales y no orienta el uso analítico de la información operativa, comercial y financiera (D4).

Por eso se propone una política de gobernanza para la futura unidad de ciencia de datos. Toma como referencia el [caso de P&G](https://www.hci.org/video/data-governance-and-standardization-pg): un equipo central que controla el acceso a los datos y un diccionario de datos con métricas, jerarquías, definiciones, dueños y periodicidad.

#### a. Arquitectura de los datos

| Componente | Situación actual | Lineamiento de la política |
|---|---|---|
| Fuentes | SCADA SP7 y DMS/OMS, sistema comercial, ERP (hacia SAP S/4HANA), Hexagon NetWorks y canales digitales, sin un inventario común. | Inventariar cada fuente con su dueño, periodicidad y nivel de sensibilidad. |
| Integración (ETL) | Integraciones puntuales por proyecto (SafeGRID, DESS, pronóstico de demanda). | Centralizar la extracción, transformación y carga en Azure, aprovechando las licencias contratadas en 2025. |
| Almacenamiento | Datos en silos; el SCADA y el ERP se administran desde EPM. | Crear un repositorio analítico único (lago de datos) como fuente única de verdad, con acuerdos de acceso con EPM. |
| Estándares | El Modelo Común de Información (CIM) solo se usa en DESS. | Adoptar CIM como estándar para los datos de la red y SAP como maestro de activos, proveedores y finanzas. |
| Disposición | Supresión de datos personales según la Ley 1581. | Definir tiempos de retención y borrado para cada tipo de dato. |

#### b. Calidad de los datos

La política amplía a todos los datos el principio de calidad que hoy solo aplica a los datos personales. Cada regla se verifica automáticamente al cargar los datos en el repositorio y se reporta en un tablero mensual de calidad.

| Dimensión | Regla | Indicador (meta propuesta) |
|---|---|---|
| Exactitud | Las lecturas de consumo deben cuadrar con el balance de energía de cada circuito. | Lecturas sin anomalías (≥ 97 %). |
| Completitud | Los registros de clientes y activos deben tener todos sus campos obligatorios. | Registros completos (≥ 98 %). |
| Consistencia | Un mismo cliente o activo debe tener el mismo código en todos los sistemas. | Códigos que coinciden entre sistemas (≥ 99 %). |
| Unicidad | No debe haber clientes ni activos duplicados. | Duplicados detectados (≤ 0,5 %). |
| Oportunidad | Los datos operativos y comerciales deben estar disponibles para análisis a tiempo. | Carga en el repositorio en menos de 24 horas. |

**Roles y diccionario de datos.** Un comité de gobierno de datos, integrado por TI, las áreas de negocio y el oficial de protección de datos, aprueba los estándares. Los dueños de proceso (Distribución, Comercial y Finanzas) responden por la calidad de sus datos, y TI actúa como custodio técnico. Siguiendo el ejemplo de P&G, el comité mantiene un diccionario de datos con la definición, el dueño, la fuente y la periodicidad de cada indicador (SAIDI, SAIFI, pérdidas, recaudo), para que todas las áreas calculen igual las mismas cifras.

### 5. Revisión del compromiso con los interesados

#### Entrevista 1. Administradora de bases de datos (TI)

**¿Ha trabajado antes con un equipo de analítica?**
"Equipo de analítica como tal no hay. Lo que sí me llega todo el tiempo son solicitudes: que una consulta de pérdidas por circuito, que un cruce de clientes con consumos para Comercial. Yo las saco, las mando en Excel y ahí se acaba mi parte. No es mala experiencia, pero es muy de apagar incendios. Diría que neutra."

**¿Qué tanto se conoce lo que puede hacer la analítica?**
"Yo sé lo que hay en las bases y sé que ahí hay oro, pero también sé lo sucios que están algunos datos. Mucha gente cree que es pedir el dato y ya. No ven que hay códigos repetidos, direcciones mal escritas, medidores que cambiaron y nadie actualizó."

**¿Cuáles son los desafíos de su área?**
"El más grande es la migración a SAP S/4HANA. Eso sale en 2027 y hay que limpiar datos maestros antes de pasarlos; si migramos basura, SAP va a tener basura. Lo otro es que la información está regada: el SCADA lo administra EPM con Siemens, lo comercial está por un lado, la correspondencia en Mercurio... No hay un sitio donde todo se cruce."

**¿Qué la motiva a nivel personal?**
"Me gustaría que existiera un rol formal de gobierno de datos, alguien dueño de la calidad. Hoy eso lo hago a ratos y sin que esté en mis funciones. También quiero meterme más con Azure, ahora que tenemos la licencia."

**¿Quién apoyaría o frenaría una unidad de analítica?**
"Apoyo seguro de la gente de innovación, de CENSNNOVA. Lo que me preocupa es que si se abre acceso a todos para hacer consultas, alguien tumbe una base en producción. Yo apoyaría, pero con reglas claras."

#### Entrevista 2. Arquitecto de software (fábrica digital)

**¿Ha trabajado antes con un equipo de analítica?**
"Sí, y bien. Acompañamos a los de innovación en SafeGRID, el piloto de pérdidas, y vimos cómo un prototipo recupera más de 1.000 kWh al mes por usuario. Eso convence a cualquiera. El problema es que cuando el piloto termina, nadie se queda con él. Positiva, pero con ese sinsabor."

**¿Qué tanto se conoce lo que puede hacer la analítica?**
"En TI entendemos bastante: sabemos que se puede pronosticar demanda, detectar fraude, priorizar mantenimiento. De hecho, en un hackathon un equipo armó un pronóstico de demanda con *machine learning*. La brecha está en pasar del prototipo a algo que funcione todos los días. Eso no es solo ciencia de datos, es arquitectura, y ahí todavía estamos verdes."

**¿Cuáles son los desafíos de su área?**
"Tenemos nueve desarrollos propios, seis ya en producción, y nos ahorramos unos 690 millones frente a contratar afuera. Pero cuando llegue SAP, algunos se van a pisar, como el de presupuesto. También tenemos RPA, agentes en Copilot Studio y desarrollos en Azure, cada uno por su lado. Y hasta cuatro bots para el cliente. Necesitamos ordenar eso y tener una capa de datos común, porque hoy cada solución trae su propia base."

**¿Qué lo motiva a nivel personal?**
"Me encantaría diseñar la plataforma de datos de la empresa en Azure, algo que perdure. Lo de los premios CIER fue bonito, pero quiero que lo que construimos no se quede en un piloto."

**¿Quién apoyaría o frenaría una unidad de analítica?**
"Yo soy de los que empujan. Las dudas van a venir de quienes ven la analítica como gasto y no como inversión, sobre todo ahora que la plata está apretada por los subsidios que no ha girado la Nación."

#### Entrevista 3. Analista de datos (gestión de pérdidas)

**¿Ha trabajado antes con un equipo de analítica?**
"No como tal. Yo pido los datos a TI, me llegan en unos días y los trabajo en Excel. A veces cuando llegan ya la reunión pasó. No es culpa de ellos, son poquitos y les llega de todo, pero la experiencia es más bien negativa por los tiempos."

**¿Qué tanto se conoce lo que puede hacer la analítica?**
"Hago informes de pérdidas y de indicadores, eso lo domino. Fui al taller de Copilot con otras 400 personas y quedé con ganas de más. Pero en mi área hay gente que piensa que un modelo predictivo es una bola de cristal, y otros que piensan que es algo imposible. Falta explicar qué se puede y qué no."

**¿Cuáles son los desafíos de su área?**
"Las pérdidas están en 14,3 % y en el Catatumbo pasan del 47 %. Allá muchas veces no podemos ni entrar por orden público. El año pasado se recuperaron casi 30 GWh, pero todo a punta de revisiones en campo. Si los pilotos de medición inteligente no estuvieran atrasados, podríamos vigilar consumos a distancia sin arriesgar a nadie."

**¿Qué la motiva a nivel personal?**
"Quiero dejar de ser 'la de los informes' y trabajar en modelos de verdad. Estoy pensando en estudiar ciencia de datos. Si se crea la unidad, me encantaría estar ahí."

**¿Quién apoyaría o frenaría una unidad de analítica?**
"Los ingenieros jóvenes y la gente de innovación se le miden. Algunos jefes con muchos años confían más en la experiencia de campo que en un modelo, y les preocupa que les cambien la forma de trabajar. Hay que llegarles con resultados, no con promesas."

#### Resumen de resultados

| Tema | Administradora de bases de datos | Arquitecto de software | Analista de datos |
|---|---|---|---|
| Interacciones anteriores | Neutra: atiende solicitudes puntuales de datos. | Positiva: acompañó SafeGRID, pero los pilotos no tienen continuidad. | Negativa: los datos llegan tarde para la toma de decisiones. |
| Madurez analítica | Alta en datos, conoce sus problemas de calidad. | Alta: entiende el potencial, pero ve la brecha entre prototipo y producción. | Media: domina reportes; percibe expectativas poco realistas en su área. |
| Desafíos actuales | Migración a SAP S/4HANA (2027), datos dispersos sin integrar. | Superposición de soluciones; falta una capa de datos común. | Pérdidas del 14,3 % (47 % en el Catatumbo) y atraso en AMI. |
| Ambiciones personales | Formalizar un rol de gobierno de datos; formarse en Azure. | Diseñar la plataforma de datos corporativa. | Pasar de los reportes a los modelos; estudiar ciencia de datos. |
| Campeón potencial | Sí, con condiciones (reglas de acceso). | Sí, fuerte. | Sí, entusiasta. |
| Detractores identificados | Usuarios sin control que pongan en riesgo la producción. | Quienes ven la analítica como un gasto en época de liquidez ajustada. | Jefes con larga experiencia que confían más en el campo que en los modelos. |

**Lectura general.** Las tres personas coinciden en que el problema no es la falta de interés, sino la falta de estructura: no hay una unidad que reciba las solicitudes, los datos están dispersos y los pilotos exitosos no pasan a producción. Los campeones están en TI e innovación. La resistencia viene de la presión financiera y de la cultura de campo, y se atiende mostrando resultados rápidos, como sugiere la estrategia DA de la matriz DOFA.

