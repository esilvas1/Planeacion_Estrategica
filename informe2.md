<div align="center">

![](img/Logo_Pontificia_Javeriana.png){width=55%}

<br><br>

# Taller Modulo 2: Project Scoping

### Actividad 2

### Caso: Centrales Eléctricas del Norte de Santander (CENS) – Grupo EPM

### Proyecto: Detección y priorización de pérdidas de energía no técnicas

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

Módulo 2

Maestría en Ciencia de Datos

Pontificia Universidad Javeriana Cali

<br>

Santiago de Cali, octubre de 2026

</div>

<div style="page-break-after: always;"></div>

---

## 1. Descripción del contexto donde se desarrollará el proyecto

### 1.1 Título del proyecto

Detección y priorización de pérdidas de energía no técnicas en CENS.

### 1.2 Nombre de la organización

Centrales Eléctricas del Norte de Santander S.A. E.S.P. (CENS) – Grupo EPM.

CENS presta el servicio de energía eléctrica en Norte de Santander, el sur del Cesar y el sur de Bolívar. Atiende a más de 640.000 clientes, opera cerca de 29.700 km de red y ofrece, además del servicio básico, soluciones de movilidad eléctrica, energía solar y servicios complementarios ([cens.com.co](https://www.cens.com.co/)).

Opera en un entorno regulado (CREG), con presión por calidad del servicio (SAIDI, SAIFI), control de pérdidas y liquidez. En el frente digital cuenta con desarrollos en Azure, el piloto SafeGRID y gestión por indicadores. No existe una unidad formal de ciencia de datos: la analítica depende de TI y de iniciativas puntuales.

### 1.3 Descripción del problema

CENS enfrenta pérdidas de energía no técnicas asociadas a hurto, fraude y anomalías de medición o de consumo. Ese fenómeno eleva el índice de pérdidas, reduce ingresos y complica el cumplimiento de las metas regulatorias de control de pérdidas. El impacto recae sobre la empresa, en su liquidez y desempeño, sobre los usuarios que asumen parte del costo en la tarifa y, de manera más aguda, sobre las zonas de mayor incidencia, en particular el Catatumbo.

En 2025 el índice de pérdidas cerró en 14,30 % y en el Catatumbo alcanzó 47,84 %. Ese mismo año se recuperaron 29,85 GWh, en gran medida mediante revisiones en campo. El indicador mejora con lentitud, el acceso a zonas críticas está restringido por el orden público y la liquidez de la compañía está tensionada, y al mismo tiempo CENS dispone de capacidad tecnológica (Azure, datos comerciales y de red) para priorizar mejor las intervenciones.

Hasta ahora el problema se ha abordado con revisiones y esquemas de control en campo, con gestión comercial en zonas críticas y con el piloto SafeGRID (TRL 7, más de 1.000 kWh recuperados por usuario al mes en prueba), aún sin un servicio operativo permanente. En la solución intervienen Distribución y gestión de pérdidas, Comercial, TI, innovación (CENSNNOVA), los equipos de campo y, cuando corresponda, EPM por la administración de SCADA y del ERP.

#### 1.3.1 ¿Cuál es el problema de negocio o de política que enfrentan?

Pérdidas de energía no técnicas asociadas a hurto, fraude y anomalías de medición o de consumo. El fenómeno eleva el índice de pérdidas, reduce ingresos y complica el cumplimiento de las metas regulatorias de control de pérdidas.

#### 1.3.2 ¿A quién o a qué afecta este problema?

Afecta a CENS (ingresos, liquidez y desempeño regulatorio), a los clientes y usuarios que asumen parte del costo en la tarifa, a las zonas geográficas de mayor incidencia, en especial el Catatumbo, y a los equipos de Distribución, Comercial y de campo, que concentran revisiones con poca priorización analítica.

#### 1.3.3 ¿Cuántos se ven afectados y en qué medida?

CENS atiende más de 640.000 clientes. El índice de pérdidas cerró en 14,30 % en 2025 y en el Catatumbo alcanzó 47,84 %. Ese mismo año se recuperaron 29,85 GWh, en gran medida mediante revisiones en campo. El impacto es de gran magnitud sobre el balance energético del área de influencia y, de forma crítica, sobre un subconjunto de circuitos y usuarios en zonas de difícil acceso.

#### 1.3.4 ¿Por qué resolver este problema es una prioridad para la organización en este momento?

El indicador mejora con lentitud (0,08 puntos porcentuales frente a 2024), el acceso a zonas críticas está restringido por el orden público y la liquidez está tensionada por factores externos (subsidios y opción tarifaria). Al mismo tiempo, CENS dispone de capacidad tecnológica (Azure, datos comerciales y de red, piloto SafeGRID) para priorizar intervenciones antes de la migración a SAP Saphiro en 2027.

#### 1.3.5 ¿Cómo han intentado enfrentar este problema y cuál ha sido el resultado?

| Esfuerzo | Resultado |
|---|---|
| Revisiones y control en campo | Recuperación de 29,85 GWh en 2025, alto costo operativo y dependencia del acceso físico. |
| Gestión comercial en zonas críticas | Limitada por orden público y por la capacidad de pago de algunos segmentos. |
| Piloto SafeGRID | TRL 7, más de 1.000 kWh recuperados por usuario al mes en prueba, aún sin servicio operativo permanente. |

#### 1.3.6 ¿Qué otros grupos o interesados deben participar en el alcance y la implementación?

| Ámbito | Interesados |
|---|---|
| Internos | Gestión de pérdidas / Distribución, Comercial, TI (datos e infraestructura), innovación (CENSNNOVA), cuadrillas y supervisores de campo, áreas de riesgo y cumplimiento. |
| Grupo empresarial | EPM (SCADA, ERP/Saphiro y lineamientos de grupo). |
| Externos | CREG (metas de pérdidas), usuarios priorizados para intervención, contratistas de inspección cuando aplique, autoridades locales en zonas de acceso restringido. |

## 2. Alcance y limitaciones

### Alcance

- **Dentro del alcance:** priorización analítica de clientes y circuitos con mayor riesgo de pérdida no técnica, identificación geográfica de puntos (circuitos, transformadores o zonas) donde, a partir de estudios técnicos y de medidas de consumo y red, se pueda deducir o predecir robos de energía, generación de listas de intervención para Distribución, Comercial y campo, uso de datos comerciales, de medición y de red disponibles en CENS, y evolución del piloto SafeGRID hacia un servicio operable.
- **Fuera del alcance:** normalización integral de la red, solución del acceso físico al Catatumbo, reemplazo del ERP ni la migración a SAP Saphiro, y creación completa de la unidad de ciencia de datos (solo el caso de uso de pérdidas).

### Limitaciones

- Dependencia de la calidad e integración de los datos existentes (silos SCADA, comercial y ERP).
- Capacidad limitada de las cuadrillas para atender las listas priorizadas.
- Restricciones de orden público en zonas críticas.
- Cumplimiento de la Ley 1581 de 2012 en el tratamiento de datos de clientes.
- Restricciones de liquidez que exigen resultados medibles en el corto plazo.

### 4. Objetivo del proyecto (Meta)

Priorizar intervenciones de campo y de control sobre clientes y circuitos con mayor riesgo de pérdida no técnica, para recuperar más energía con la misma o menor capacidad de inspección. El resultado esperado es mayor energía recuperada y mejor uso de cuadrillas, dentro de las restricciones de liquidez, acceso territorial y protección de datos personales (Ley 1581).

#### 4.1 ¿Cuáles son las metas de negocio o de política, y qué restricciones tienen?

| Prioridad | Meta | Tipo de meta | Restricciones |
|---|---|---|---|
| 1 | Aumentar la energía recuperada por intervención de campo, asignando las visitas a clientes y circuitos de mayor riesgo de pérdida no técnica. | Eficiencia | Capacidad limitada de cuadrillas, liquidez tensionada, ausencia de tableros y predicciones de fraude en tiempo casi real, y condiciones de orden público que impiden ingresar a ciertas zonas. |
| 2 | Reducir el índice de pérdidas no técnicas en el área de influencia de CENS, con seguimiento en zonas de alta incidencia. | Efectividad | Calidad e integración de datos comerciales, de medición y de red, operación continua del producto derivado de SafeGRID, y condiciones de orden público que limitan la intervención en zonas de alta incidencia. |
| 3 | Mantener en las listas de priorización zonas y segmentos de alta incidencia, aun cuando en ocasiones sea imposible ingresar a las zonas de difícil acceso. | Equidad | Condiciones de orden público que en ocasiones hacen imposible el ingreso a zonas de difícil acceso, tratamiento de datos personales bajo la Ley 1581 de 2012 y registro de la distribución geográfica de las intervenciones. |

En la práctica, el equipo genera periódicamente un ranking geográfico de riesgo, Distribución y Comercial programan las cuadrillas según ese ranking y dentro de la capacidad disponible, y se mide el resultado en energía recuperada e índice de pérdidas. Cuando el orden público bloquea el ingreso, la visita queda pendiente o se reprograma, sin sacar esa zona del análisis de priorización.

#### 4.2 ¿Qué intercambios o tensiones existen entre estas metas?

Entre eficiencia y equidad aparece esta tensión: las zonas de difícil acceso, como el Catatumbo, concentran un índice de pérdidas de hasta 47,84 %, pero en ocasiones es imposible ingresar por orden público. Eso reduce la presencia operativa ahí, aunque el modelo siga señalando esos puntos como prioritarios. Entre eficiencia y efectividad, ampliar mucho el listado mejora la cobertura del índice global, pero baja el rendimiento por intervención porque las cuadrillas se dispersan.

En este proyecto el orden de énfasis es el de la tabla de 4.1. Primero se ejecuta la priorización por mayor riesgo y se obtienen resultados tempranos de energía recuperada en las zonas donde sí hay acceso. Las zonas de alta incidencia permanecen en el ranking y en el seguimiento, y las visitas se realizan cuando las condiciones de ingreso lo permiten.

### 5. Acciones

CENS ejecuta de forma rutinaria las acciones para alcanzar las metas. Los datos y el análisis del proyecto informan estas acciones, en especial la selección de a quién o a qué punto visitar.

#### 5.1 ¿Qué acciones tomará la organización para atender el problema?

| | Acción 1 | Acción 2 | Acción 3 |
|---|---|---|---|
| **¿Cuál es la acción?** | Inspección y revisión técnica en campo de clientes, medidores o transformadores señalados como de alto riesgo de pérdida no técnica. | Generación y actualización del ranking geográfico de riesgo (circuitos, transformadores o zonas) para deducir o predecir puntos de robo o fraude. | Gestión comercial y de normalización sobre usuarios priorizados (verificación de consumo, corrección de medición, recuperación de energía facturable). |
| **¿A qué meta contribuye?** | Meta 1 (eficiencia): más energía recuperada por visita. Meta 2 (efectividad): bajar el índice de pérdidas. | Meta 1 y meta 3: prioriza por riesgo y mantiene en la lista zonas de alta incidencia aunque no haya ingreso inmediato. | Meta 1 y meta 2: convierte la priorización en recuperación efectiva de energía. |
| **¿Quién la ejecuta?** | Cuadrillas y supervisores de Distribución / gestión de pérdidas. | Equipo de analítica / TI, con apoyo de innovación (CENSNNOVA) y validación de Distribución. | Comercial y equipos de campo asociados a control de pérdidas. |
| **¿Sobre quién o qué se aplica?** | Cliente, medidor, transformador o tramo de red priorizado. | Circuitos, transformadores y zonas del área de influencia de CENS. | Usuarios y cuentas con anomalía de consumo o medición. |
| **¿Con qué frecuencia se decide?** | Semanal, según capacidad de cuadrillas y condiciones de acceso. | Quincenal o mensual, con recálculo del ranking al actualizar datos de consumo y red. | Semanal o quincenal, alineada con las listas de priorización. |
| **¿Por qué canales?** | Presencial en campo. | Digital: plataforma Azure, tableros y listados operativos. | Presencial y canales comerciales (visita, llamada, sede electrónica cuando aplique). |
| **¿Qué restricciones de capacidad tiene?** | Cupo limitado de inspecciones por semana o mes, y zonas donde el orden público impide el ingreso. | Disponibilidad y calidad de datos comerciales, de medición y de red, y demora en tableros o predicciones casi en tiempo real. | Capacidad del equipo comercial y tiempo de respuesta del usuario. |
| **¿Qué temas éticos se asocian?** | Intervenir a quien no tenía irregularidad genera desgaste y reclamos. Excluir zonas de difícil acceso mantiene alta la pérdida allí. | Riesgo de sesgo geográfico o de segmento en el modelo. Uso de datos personales bajo la Ley 1581 de 2012. | Posible afectación a usuarios vulnerables si la normalización no considera su contexto. |
| **Otra información útil** | Se apoya en la experiencia de revisiones en campo que en 2025 recuperaron 29,85 GWh. El efecto sobre la energía recuperada se observa tras la visita y la normalización. | Continúa la línea del piloto SafeGRID (TRL 7). Requiere acuerdos de acceso a datos con TI y, cuando aplique, con EPM (SCADA). | El efecto completo aparece cuando se corrige la medición o el fraude y se refleja en facturación y en el índice de pérdidas. |

### 6. Datos

El proyecto combina fuentes administrativas internas de CENS con información pública externa del sector eléctrico y del entorno.

#### 6.1 ¿Qué fuentes de datos internas se tienen?

| | Fuente 1 | Fuente 2 | Fuente 3 |
|---|---|---|---|
| **Nombre** | Sistema GIS (GTECH) | Sistema de información comercial (SAC) | SCADA |
| **¿Qué contiene?** | Inventario y ubicación de la red: circuitos, transformadores, postes, tramos, coordenadas y topología de distribución. | Datos de clientes y cuentas: identificación, dirección, consumo facturado, tipo de usuario, estado de la cuenta, novedades comerciales y de medición. | Medidas operativas de la red en tiempo real o casi real: cargas, alarmas, estados de equipos y eventos de operación. |
| **Granularidad** | Activo de red / transformador / circuito, con georreferenciación. | Cliente / cuenta / medidor. | Punto de medida o equipo de red, por instante o intervalo de operación. |
| **Historia disponible** | Histórico de red suficiente para ubicar activos y cambios de topología en los últimos años de operación. | Series de consumo y novedades de varios años de facturación, útiles para detectar anomalías. | Registros operativos recientes y archivos de eventos, según retención definida con EPM / Centro de Control. |
| **Frecuencia de actualización** | Según mantenimientos y actualizaciones de inventario de red. | Diaria o por ciclo de facturación, con novedades comerciales frecuentes. | Continua (tiempo real o casi real). |
| **Identificadores para cruce** | Código de transformador, circuito o activo, enlazable con SAC y con medidas de red. | NIU / cuenta / medidor, enlazable con ubicación GIS y con resultados de inspección. | Código de equipo o punto de medida, enlazable con GIS (GTECH). |
| **Dueño interno** | Distribución / área de red e inventario GIS. | Comercial / sistemas de información comercial. | Centro de Control / operación, con administración de SCADA en coordinación con EPM. |
| **Almacenamiento** | Base geoespacial GTECH / repositorio GIS corporativo. | Base de datos del SAC. | Históricos y servidor SCADA, con acceso controlado. |
| **Temas éticos** | Ubicación de infraestructura crítica: acceso restringido y custodia de la información. | Datos personales de clientes: Ley 1581 de 2012, minimización de uso y control de acceso. | Seguridad de la operación y ciberseguridad de ciberactivos. |
| **Otra información útil** | Base para la identificación geográfica de puntos de riesgo. | Base para el perfil de consumo y la priorización de usuarios. | Base para contrastar energía de red frente a energía facturada y detectar desbalances. |

#### 6.2 ¿Qué datos se obtienen de fuentes externas públicas o privadas?

| | Fuente 1 | Fuente 2 | Fuente 3 |
|---|---|---|---|
| **Nombre** | Información de XM | Información de la CREG | Información de la SSPD |
| **¿Qué contiene?** | Datos del mercado eléctrico y de operación del sistema: variables de energía, reportes y series del operador del mercado. | Regulación, metodologías y parámetros asociados a calidad del servicio, pérdidas y reglas del negocio de distribución. | Reportes, indicadores y vigilancia del servicio público, quejas y desempeño de prestadores. |
| **Granularidad** | Agregada por mercado, agente o periodo de reporte. | Documental y paramétrica (resoluciones, metas, metodologías). | Por empresa, mercado o periodo de vigilancia. |
| **Frecuencia de actualización** | Diaria o según publicaciones periódicas de XM. | Según emisión o actualización de resoluciones y circulares. | Según reportes periódicos de vigilancia y publicación de indicadores. |
| **Identificadores para cruce** | Códigos de agente, mercado o periodo, enlazables con el mercado de CENS. | Referencias normativas aplicables al mercado de CENS. | Identificación de la empresa prestadora y del mercado. |
| **Dueño / origen** | XM (operador del mercado). | Comisión de Regulación de Energía y Gas (CREG). | Superintendencia de Servicios Públicos Domiciliarios (SSPD). |
| **Almacenamiento / acceso** | Portales, reportes y descargas públicas o de acceso sectorial. | Sitio web y documentos oficiales CREG. | Portales y reportes públicos SSPD. |
| **Temas éticos** | Uso conforme a las condiciones de publicación y no distorsión de cifras oficiales. | Interpretación correcta de la norma, sin uso indebido frente a usuarios. | Manejo responsable de información de vigilancia y de quejas. |
| **Otra información útil** | Contextualiza el balance energético y el entorno de mercado. | Enmarca metas y reglas de pérdidas, sin ser por sí misma una restricción operativa del modelo. | Permite contrastar el desempeño de CENS con la vigilancia del servicio. |

#### 6.3 En un escenario ideal, ¿qué datos adicionales serían relevantes?

Además de las fuentes internas y externas ya descritas, el proyecto incorpora o aspira a cruzar:

- Datos en tiempo real o casi real de **precipitación** y **temperatura**, tomados de páginas o servicios meteorológicos que reportan valores actualizados, para corregir o contextualizar variaciones de consumo.
- **Polígonos de asentamientos rurales**, para ubicar geografías donde la red y el patrón de consumo difieren del área urbana.
- **Polígonos de problemas de orden público**, para marcar zonas de difícil ingreso, mantenerlas en el ranking de priorización y programar visitas solo cuando haya condiciones de acceso.
- Información del **DANE** (demografía, vivienda, pobreza u otras variables territoriales), para enriquecer el contexto socioeconómico de las zonas y reducir sesgos al interpretar anomalías de consumo.

### 7. Análisis

Este análisis es el medio para priorizar inspecciones, actualizar el ranking geográfico y orientar la normalización comercial.

#### 7.1 ¿Qué análisis se realizarán para informar las acciones?

| | Análisis 1 | Análisis 2 | Análisis 3 |
|---|---|---|---|
| **Tipo de análisis** | Descripción | Detección | Predicción (con apoyo de optimización de visitas) |
| **Propósito** | Caracterizar el comportamiento histórico de pérdidas y consumo por circuito, transformador y zona, y calcular desbalances entre energía de red (SCADA/GIS) y energía facturada (SAC). | Identificar en el periodo actual cuentas, medidores o tramos con comportamiento anómalo respecto a su historia y a vecinos de la misma zona o transformador. | Estimar el riesgo de pérdida no técnica o fraude en cada punto geográfico y producir un ranking priorizado para asignar la capacidad limitada de cuadrillas. |
| **Acción que informa** | Acción 2 (ranking geográfico) y planeación de Distribución y Comercial. | Acción 1 (inspección en campo) y Acción 3 (gestión comercial / normalización). | Acción 1, Acción 2 y Acción 3: define el orden de visitas y mantiene en lista las zonas de alta incidencia aunque no haya ingreso inmediato. |
| **Cómo se analiza (método y herramientas)** | Análisis exploratorio de datos (EDA), balances de energía por circuito o transformador, series temporales de consumo, mapas de calor sobre GTECH y tableros en Azure. Herramientas: Python (pandas, geopandas), SQL sobre SAC/GIS y Power BI o equivalentes. | Detección de anomalías: reglas de negocio (caídas abruptas de consumo, consumo nulo con vecinos activos), métodos no supervisados (Isolation Forest, LOF o autoencoders) y, cuando haya etiquetas de inspecciones previas, modelos supervisados. Herramientas: scikit-learn, PyTorch o equivalentes sobre features de SAC, SCADA y GIS. | Modelos de riesgo / clasificación o scoring (regresión logística, random forest, gradient boosting / XGBoost o LightGBM) con variables de consumo, red, clima, DANE y orden público. Optimización de la agenda de visitas sujeto a cupo de cuadrillas y polígonos de acceso. Herramientas: scikit-learn, XGBoost/LightGBM, OR-Tools o reglas de asignación en Azure. |
| **Validación y métricas** | Contraste del balance histórico con reportes de pérdidas ya conocidos y con zonas de alta incidencia (p. ej. Catatumbo). Métricas: error de balance por circuito, estabilidad de series y cobertura geográfica del inventario GIS. | Validación retrospectiva con resultados de inspecciones y del piloto SafeGRID. Métricas: precisión, recall, F1 y precisión en el top 10 % de alertas, comparadas contra una línea base aleatoria y contra el criterio actual de programación de visitas. | Validación temporal (train/test por periodos, walk-forward). Métricas: AUC, precisión y valor predictivo positivo en el top 5 % o 10 %, lift frente a selección aleatoria y frente al sistema actual, y kWh recuperados por visita en un piloto de campo. |
| **Línea base de comparación** | Reportes históricos de pérdidas y mapas operativos actuales sin cruce sistemático SAC–SCADA–GIS. | Selección aleatoria de cuentas y listados actuales sin modelo de anomalías. | Programación actual de cuadrillas y resultado del piloto SafeGRID como referencia de mejora. |
| **Temas éticos del análisis** | Evitar estigmatizar zonas enteras solo por el nivel agregado de pérdidas. | Falsos positivos que generen visitas injustificadas, y falsos negativos que dejen fuera fraudes reales. Cumplimiento de la Ley 1581 al usar datos de SAC. | Sesgo geográfico o socioeconómico (DANE, asentamientos rurales). No excluir del ranking las zonas de difícil acceso, aunque la visita se posponga por orden público. |

En conjunto, el flujo de análisis es: primero se describe y balancea la red (Análisis 1), luego se detectan anomalías vigentes (Análisis 2) y finalmente se predice el riesgo y se ordenan las visitas (Análisis 3). La validación inicial se hace con datos históricos e inspecciones pasadas, y la validación definitiva con un ensayo de campo sobre las listas priorizadas.

### 8. Consideraciones éticas

Las consideraciones éticas acompañan el alcance, el diseño y la ejecución del proyecto. Se revisan de forma continua, no solo al cierre del scoping.

#### 8.1 Privacidad, confidencialidad y seguridad

El proyecto trabaja con datos personales e individualmente identificables del SAC (NIU, cuenta, medidor, dirección, consumo, novedades comerciales) y con datos sensibles de operación (GIS/GTECH y SCADA) que describen infraestructura crítica. El marco legal aplicable es la Ley 1581 de 2012 y las políticas de tratamiento de datos de CENS y del Grupo EPM. Éticamente, el uso se limita a lo necesario para priorizar intervenciones de control de pérdidas, sin reutilizar los datos para fines ajenos al caso de uso.

Protecciones previstas: acceso por roles (TI, Distribución, Comercial y analítica), minimización de campos en los listados operativos, seudonimización o agregación cuando el análisis no requiera identificar al cliente, cifrado y controles de ciberseguridad sobre Azure y sobre SCADA en coordinación con EPM, y custodia reforzada de la ubicación de activos de red. La auditoría de estas protecciones se alinea con los controles internos de TI y cumplimiento: revisión periódica de permisos, registro de accesos a bases comerciales y de red, y seguimiento a incidentes. Los permisos y accesos se revisan al menos cada trimestre, y de inmediato ante cualquier incidente o cambio mayor de infraestructura (por ejemplo, migración a SAP Saphiro).

#### 8.2 Transparencia

| Interesado | Qué debe conocer sobre el proyecto |
|---|---|
| Dirección y áreas de política / regulación interna | Metas (energía recuperada, índice de pérdidas, equidad territorial), restricciones de liquidez y orden público, y límites del modelo (no sustituye la decisión humana de visitar). |
| Trabajadores de primera línea (cuadrillas, supervisores, Comercial) | Cómo se construye el ranking, qué señales alimentan la alerta, tasa esperada de falsos positivos y el protocolo cuando la visita no confirma irregularidad. |
| Personas priorizadas para intervención | Que la visita o gestión comercial responde a indicios de anomalía de consumo o medición en el marco del control de pérdidas, no a un juicio definitivo de fraude, y cuáles son sus canales de reclamación. |
| Dueños de los datos (Comercial, Distribución, Centro de Control / EPM) | Finalidad del cruce SAC–GIS–SCADA, campos usados, retención y quiénes tienen acceso a los productos analíticos. |
| Público general / usuarios del servicio | Que CENS usa analítica para reducir pérdidas no técnicas que afectan la tarifa y la sostenibilidad del servicio, con protección de datos personales. |

Los dueños de los datos deben autorizar y documentar el uso analítico. Las personas priorizadas deben poder entender, en lenguaje claro, por qué aparecen en la lista y qué ocurre si la inspección no encuentra irregularidad.

#### 8.3 Discriminación / equidad

Los grupos para los que se busca equidad de resultados son: usuarios de zonas de alta incidencia y difícil acceso (en particular el Catatumbo), segmentos rurales frente a urbanos, usuarios de menor capacidad de pago o en condición de vulnerabilidad socioeconómica, y, cuando los datos lo permitan, desagregaciones por tipo de usuario y localidad. Para estos grupos, equidad significa no quedar excluidos del análisis ni del seguimiento solo por el costo operativo o por la imposibilidad temporal de ingresar, y no recibir un trato más agresivo de normalización sin considerar su contexto.

Sesgos a vigilar: sobreponderar zonas urbanas de fácil acceso (eficiencia a costa de equidad), estigmatizar circuitos enteros por el índice agregado de pérdidas, y confundir patrones de pobreza o informalidad (variables DANE, asentamientos rurales) con fraude. Mitigación: mantener en el ranking las zonas de difícil acceso aunque la visita se posponga, medir la distribución geográfica y por segmento de las intervenciones y de los falsos positivos, revisar el modelo cuando un grupo quede sistemáticamente sobre o sub representado, y separar la señal de riesgo técnico de la decisión comercial de cobro o normalización. También se reconocen inequidades más amplias (orden público, capacidad de pago, calidad histórica del servicio) que el modelo no elimina, pero que no deben amplificarse al priorizar.

#### 8.4 Licencia social

Si la población del área de influencia o del país conoce el proyecto, es razonable esperarlo como aceptable en la medida en que reduce pérdidas que terminan en la tarifa, mejora el uso de recursos públicos y privados del prestador, y opera bajo reglas de protección de datos. El titular del servicio espera que el control de fraude sea legítimo, pero también que no se le trate como sospechoso sin causa revisable.

Grupos que podrían objetar: usuarios falsamente priorizados (visitas injustificadas y desgaste), comunidades del Catatumbo u otras zonas estigmatizadas por el discurso de “alto hurto”, y organizaciones de usuarios o veedurías si perciben opacidad del algoritmo o uso excesivo de datos personales. Un titular de prensa positivo enfatizaría recuperación de energía y menor carga en la tarifa. Uno negativo enfatizaría “CENS espía consumos” o “persigue a los más pobres”. Por eso la comunicación pública debe centrarse en el beneficio colectivo del control de pérdidas, en la protección de datos y en el derecho a reclamar cuando la inspección no confirma irregularidad.

#### 8.5 Rendición de cuentas (accountability)

| Rol | Responsabilidad ética |
|---|---|
| Quienes construyen el sistema (analítica / TI / CENSNNOVA) | Calidad de datos y del modelo, documentación de supuestos, monitoreo de sesgos y falsos positivos, y cumplimiento de controles de acceso y minimización. |
| Quienes actúan sobre las salidas (cuadrillas, supervisores, Comercial) | Usar el ranking como apoyo, no como veredicto, registrar el resultado de cada visita y abstenerse de prácticas abusivas en la normalización. |
| Quienes definen metas y prioridades (dirección de Distribución / pérdidas, y lineamientos de grupo cuando aplique) | Equilibrio entre eficiencia, efectividad y equidad territorial, y recursos para atender reclamaciones y zonas de difícil acceso cuando haya condiciones de ingreso. |
| Cumplimiento, riesgo y protección de datos | Vigilancia de Ley 1581, incidentes de seguridad y uso indebido de listados. |

Ante fugas de datos, uso indebido del sistema, consecuencias no deseadas (por ejemplo, hostigamiento a un segmento) u otros daños, la rendición de cuentas es compartida: TI y analítica por el diseño y la custodia técnica, las áreas operativas por la forma de intervenir, y la dirección del caso de uso por haber definido metas y autorizar el despliegue. Los incidentes se escalan por los canales internos de CENS / EPM de seguridad de la información y de servicio al cliente.

#### 8.6 Otras consideraciones éticas

Además de lo anterior, antes y durante el proyecto se tienen en cuenta:

- **Marco legal y regulatorio:** Ley 1581 de 2012, normas del servicio público domiciliario y lineamientos CREG/SSPD aplicables al control de pérdidas, sin presentar el score del modelo como prueba jurídica de fraude por sí solo.
- **Consentimiento e información:** el tratamiento se enmarca en las finalidades autorizadas del prestador y en el aviso de privacidad, con información clara al usuario cuando la gestión comercial o la visita lo requieran.
- **Seguridad de cuadrillas y comunidades:** en zonas de orden público crítico, la priorización analítica no obliga a ingresar. La integridad de las personas prima sobre la ejecución de la lista.
- **Infraestructura crítica y ciberseguridad:** el abuso o la filtración de GIS/SCADA puede exponer la red. El acceso analítico no debilita los controles del Centro de Control.
- **No automatización total de sanciones:** toda consecuencia material sobre el usuario (normalización, recuperación, reporte) pasa por criterio humano y registro verificable.
- **Revisión periódica:** al cerrar cada ciclo de piloto o de producción, se revisan reclamaciones, falsos positivos por segmento y la licencia social del caso de uso, antes de ampliar cobertura.

### 9. Plan de presupuesto y recursos del proyecto

El proyecto se concibe como un caso de uso analítico de doce meses, con un equipo núcleo alineado a los seis puestos ideales definidos en el estado futuro del taller de planeación estratégica (científico de datos, modelador de datos, arquitecto de datos, analista de negocio, gestor de productos y asesor analítico). Se apoya en la infraestructura y los datos que CENS ya tiene (Azure, GIS/GTECH, SAC y SCADA) y en la línea del piloto SafeGRID. El presupuesto se expresa en pesos colombianos (COP) y corresponde a una estimación de planeación, sujeta a ajuste una vez se concreten las contrataciones y los acuerdos internos con EPM.

#### 9.1 Recursos humanos

El costo incremental corresponde al equipo núcleo de analítica. Como apoyo al ranking geográfico se incluye un especialista GIS con dedicación parcial. Las cuadrillas, Comercial y los dueños de datos participan con dedicación parcial dentro de su operación normal, sin costo adicional atribuible al proyecto.

| Personaje / rol | Función en el proyecto | Dedicación | Meses | Costo mensual (COP) | Costo total (COP) |
|---|---|---|---|---|---|
| Científico de datos | Desarrolla, entrena y despliega modelos de detección y priorización de pérdidas no técnicas. | 100 % | 12 | 12.000.000 | 144.000.000 |
| Modelador de datos | Diseña el modelo conceptual y físico del repositorio analítico (SAC, GIS, SCADA), alineado con maestros futuros de SAP. | 50 % | 12 | 9.000.000 | 54.000.000 |
| Arquitecto de datos | Diseña los canales ETL, la integración con SCADA, el sistema comercial y Azure, y el rendimiento de la plataforma. | 50 % | 12 | 11.000.000 | 66.000.000 |
| Analista de negocio | Recoge necesidades de Comercial, Distribución y Pérdidas, y traduce el problema en requisitos analíticos. | 50 % | 12 | 7.000.000 | 42.000.000 |
| Gestor de productos | Planifica el backlog, el mantenimiento y la gobernanza del producto de detección de pérdidas y de los tableros. | 50 % | 12 | 8.000.000 | 48.000.000 |
| Asesor analítico | Orienta a la dirección sobre el valor estratégico, la priorización de casos de uso y el retorno de la inversión. | 20 % | 12 | 10.000.000 | 24.000.000 |
| Especialista geoespacial (GIS) — apoyo | Apoya el cruce con GTECH, mapas de calor y polígonos de acceso / asentamientos. | 30 % | 10 | 9.000.000 | 27.000.000 |
| Enlace de Distribución / gestión de pérdidas | Valida listas, programa cuadrillas y registra resultados de inspección. | 20 % | 12 | 0 | 0 |
| Enlace Comercial | Ejecuta normalización y gestión sobre usuarios priorizados. | 20 % | 12 | 0 | 0 |
| **Subtotal recursos humanos** | | | | | **405.000.000** |

#### 9.2 Recursos tecnológicos e infraestructura

El proyecto usa la nube Azure corporativa y las herramientas analíticas de código abierto (Python, scikit-learn, XGBoost/LightGBM, OR-Tools, geopandas). El costo incremental se concentra en cómputo, almacenamiento y visualización, no en nuevas plataformas.

| Concepto | Detalle | Costo anual (COP) |
|---|---|---|
| Cómputo y almacenamiento en Azure | Entornos de desarrollo y entrenamiento, almacenamiento de datos cruzados | 48.000.000 |
| Licencias de visualización (Power BI o equivalente) | Tableros operativos para Distribución y Comercial | 12.000.000 |
| Herramientas de analítica | Mayoritariamente código abierto, soporte y librerías especializadas | 6.000.000 |
| Equipos de cómputo | Estaciones de trabajo para el equipo analítico | 10.000.000 |
| **Subtotal tecnología** | | **76.000.000** |

#### 9.3 Datos, validación en campo y otros recursos

| Concepto | Detalle | Costo (COP) |
|---|---|---|
| Integración y calidad de datos | Conectores y limpieza de SAC, GIS/GTECH y SCADA, acuerdos de acceso con EPM | 20.000.000 |
| Datos externos complementarios | Variables meteorológicas, polígonos y contexto territorial (mayoría de fuentes públicas) | 5.000.000 |
| Ensayo de campo (validación) | Apoyo logístico a cuadrillas para el piloto de listas priorizadas | 25.000.000 |
| Capacitación y gestión del cambio | Transferencia a Distribución, Comercial y TI (rol de formador del equipo) | 8.000.000 |
| **Subtotal datos y validación** | | **58.000.000** |

#### 9.4 Resumen del presupuesto

| Componente | Costo estimado (COP) |
|---|---|
| Recursos humanos | 405.000.000 |
| Tecnología e infraestructura | 76.000.000 |
| Datos, validación y gestión del cambio | 58.000.000 |
| Subtotal | 539.000.000 |
| Contingencia (10 %) | 53.900.000 |
| **Total estimado** | **592.900.000** |

#### 9.5 Supuestos y consideraciones del presupuesto

- El equipo núcleo de seis personajes coincide con el estado futuro del taller de planeación estratégica. El especialista GIS y los enlaces de Distribución y Comercial son apoyo operativo del caso de uso, no un reemplazo de esos puestos.
- El proyecto se apoya en infraestructura, datos y licencias corporativas ya disponibles, por lo que el costo incremental se concentra en el equipo analítico y en la integración de datos.
- Las cuadrillas, Comercial y los dueños de datos participan con dedicación parcial dentro de su operación normal, sin costo adicional atribuible al proyecto.
- Los valores son estimaciones de planeación en pesos colombianos y se ajustan al concretar contrataciones y acuerdos con EPM.
- La contingencia del 10 % cubre variaciones en integración de datos, demoras por acceso a zonas de orden público y ajustes del ensayo de campo.
- El retorno esperado se sustenta en la energía adicional recuperada por intervención. Dado que en 2025 las revisiones recuperaron 29,85 GWh, una mejora moderada en la eficiencia de priorización justifica la inversión frente al costo de visitas no efectivas.

### 10. Desglose de actividades y cronograma

El proyecto se organiza en un desglose de actividades (EDT) de siete fases, desde el inicio hasta el cierre, durante un horizonte de doce meses. Las fases siguen el orden del scoping: primero se aseguran los datos, luego se construyen los análisis descriptivo, de detección y de predicción, y finalmente se valida en campo y se pone en operación.

#### 10.1 Desglose de actividades (EDT)

| Fase | Actividad | Entregable | Responsable principal |
|---|---|---|---|
| 1. Inicio y planeación | Acta y alcance del proyecto | Acta firmada con alcance, metas y restricciones | Gestor de productos |
| 1. Inicio y planeación | Acuerdos de acceso a datos con EPM | Permisos de SAC, GIS y SCADA formalizados | Arquitecto de datos |
| 2. Datos | Integración SAC, GIS y SCADA | Repositorio analítico con fuentes cruzadas en Azure | Arquitecto / Modelador de datos |
| 2. Datos | Calidad y construcción de variables | Conjunto de variables depurado y documentado | Modelador de datos |
| 3. Análisis descriptivo y detección | EDA y balances de energía | Caracterización histórica y balances por circuito | Científico de datos |
| 3. Análisis descriptivo y detección | Detección de anomalías | Alertas de cuentas y tramos con comportamiento anómalo | Científico de datos |
| 4. Predicción y optimización | Modelos de riesgo y scoring | Ranking geográfico de riesgo de pérdida no técnica | Científico de datos |
| 4. Predicción y optimización | Optimización de la agenda de visitas | Asignación de cuadrillas sujeta a cupo y acceso | Científico de datos |
| 5. Piloto de campo | Diseño del ensayo | Protocolo del piloto y métricas de éxito | Analista de negocio |
| 5. Piloto de campo | Ejecución del piloto | Inspecciones sobre listas priorizadas | Enlace de Distribución |
| 5. Piloto de campo | Evaluación de resultados | kWh recuperados por visita y lift frente a línea base | Científico de datos / Analista de negocio |
| 6. Producción y transferencia | Tableros y despliegue en Azure | Producto operable y tableros para negocio | Arquitecto de datos |
| 6. Producción y transferencia | Capacitación y gestión del cambio | Equipos de Comercial y Distribución capacitados | Gestor de productos |
| 7. Cierre | Documentación y cierre | Informe final, lecciones aprendidas y plan de continuidad | Gestor de productos / Asesor analítico |

#### 10.2 Cronograma (diagrama de Gantt)

El horizonte es enero a diciembre de 2027. Las fases de datos y de análisis se traslapan de forma controlada, el piloto de campo comienza cuando hay un modelo validado, y la puesta en operación se cierra con la transferencia a las áreas de negocio.

\begin{flushright}
\includegraphics[width=\textwidth]{img/gantt_proyecto_perdidas.png}
\end{flushright}

**Hitos clave.** Junio 2027: datos listos (integración y variables). Septiembre 2027: modelo validado (riesgo y optimización). Diciembre 2027: producto en operación y proyecto cerrado.

**Lectura del cronograma.** La integración de datos arranca primero porque condiciona todos los análisis. El análisis descriptivo y la detección avanzan en paralelo a la depuración final de datos para ganar tiempo. Los modelos de predicción y la optimización de visitas se construyen a mitad de año y habilitan el piloto de campo, que es la validación definitiva sobre listas priorizadas. La producción y la transferencia cierran el año, de modo que el producto quede operando y adoptado por Comercial y Distribución antes del cierre formal del proyecto.

### 11. Conclusiones del taller

Este taller de *Project Scoping* convirtió el diagnóstico del módulo anterior en un plan de proyecto concreto para CENS. Donde el primer taller definió el problema, las capacidades y el estado futuro, aquí se fijaron el alcance, las metas con sus tensiones, las acciones, los datos, los análisis, la ética, el presupuesto, el desglose de actividades y el cronograma. El resultado es un caso de uso listo para discutirse con la organización, no solo una idea de analítica.

#### 11.1 Aplicación al caso CENS

Aplicar el *DS Project Scoping Worksheet* obligó a conectar cada pieza con la siguiente. Las metas de eficiencia, efectividad y equidad dejaron de ser enunciados generales y pasaron a condicionar las acciones de inspección, ranking y normalización. Los datos de SAC, GIS y SCADA se justificaron por la acción que informan, y los tres análisis (descripción, detección y predicción con optimización) se diseñaron para priorizar visitas, no para “hacer modelos” por sí mismos. Las consideraciones éticas (Ley 1581, equidad territorial en el Catatumbo, falsos positivos) y el presupuesto alineado a los seis personajes del estado futuro cerraron el puente entre la estrategia y la ejecución.

En la práctica, el ejercicio muestra que un proyecto de ciencia de datos en un prestador regulado gana valor cuando el alcance es estrecho, medible y anclado a una decisión operativa: a quién visitar y en qué orden, con la misma o menor capacidad de cuadrillas.

#### 11.2 Aprendizaje como profesionales estudiantes de la materia

Como estudiantes de Gerencia en proyectos de ciencia de datos, el aprendizaje central fue disciplinar el salto del problema al algoritmo. El worksheet exige primero aclarar a quién afecta el problema, qué meta se persigue, qué acción cambia el resultado y qué datos existen, y solo después definir el análisis y su validación. Eso cambia el rol del profesional: deja de ser solo quien construye el modelo y pasa a ser quien traduce una necesidad de negocio en un proyecto gobernable, con restricciones, ética, recursos y fechas.

También aprendimos a manejar tensiones reales. En CENS, la eficiencia de las visitas choca con la equidad en zonas de difícil acceso, y la liquidez limita lo que se puede contratar. Nombrar esas tensiones en el scoping evita promesas irreales y fortalece el juicio gerencial que la materia busca formar.

#### 11.3 Hacia una dirección estratégica que agrega valor

Esta actividad abre una dirección estratégica porque sitúa la analítica dentro del portafolio de la empresa, no al margen de TI ni como piloto aislado. Al definir metas, acciones, presupuesto y cronograma, el caso de pérdidas no técnicas se vuelve un vehículo para recuperar energía, mejorar el uso de cuadrillas y aportar a indicadores que importan a la dirección y al regulador. Al mismo tiempo, materializa el primer producto de la unidad de ciencia de datos imaginada en el taller previo, con roles claros y un retorno argumentable frente a la inversión.

El valor para la compañía no está solo en el score del modelo. Está en decidir mejor con evidencia, en reducir visitas improductivas, en no abandonar zonas críticas en el seguimiento y en construir capacidad interna que luego se pueda transferir a otros casos de uso. El scoping es, en ese sentido, el instrumento que convierte la ciencia de datos en dirección estratégica: alinea problema, decisión, recurso y resultado, y deja a la organización con un camino ejecutable para agregar valor medible.

