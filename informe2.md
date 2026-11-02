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
