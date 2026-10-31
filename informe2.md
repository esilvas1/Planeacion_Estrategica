<div align="center">

![](img/Logo_Pontificia_Javeriana.png){width=55%}

<br><br>

# Taller unidad 2: Project Scoping

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

Módulo 1 – Unidad 2

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

CENS enfrenta pérdidas de energía no técnicas asociadas a hurto, fraude y anomalías de medición o de consumo. Ese fenómeno eleva el índice de pérdidas, reduce ingresos y complica el cumplimiento de las metas regulatorias de control de pérdidas. El impacto recae sobre la empresa —en su liquidez y desempeño—, sobre los usuarios que asumen parte del costo en la tarifa y, de manera más aguda, sobre las zonas de mayor incidencia, en particular el Catatumbo.

En 2025 el índice de pérdidas cerró en 14,30 % y en el Catatumbo alcanzó 47,84 %. Ese mismo año se recuperaron 29,85 GWh, en gran medida mediante revisiones en campo. El indicador mejora con lentitud, el acceso a zonas críticas está restringido por el orden público y la liquidez de la compañía está tensionada; al mismo tiempo, CENS dispone de capacidad tecnológica (Azure, datos comerciales y de red) para priorizar mejor las intervenciones.

Hasta ahora el problema se ha abordado con revisiones y esquemas de control en campo, con gestión comercial en zonas críticas y con el piloto SafeGRID (TRL 7; más de 1.000 kWh recuperados por usuario al mes en prueba), aún sin un servicio operativo permanente. En la solución intervienen Distribución y gestión de pérdidas, Comercial, TI, innovación (CENSNNOVA), los equipos de campo y, cuando corresponda, EPM por la administración de SCADA y del ERP.

#### 1.3.1 ¿Cuál es el problema de negocio o de política que enfrentan?

Pérdidas de energía no técnicas asociadas a hurto, fraude y anomalías de medición o de consumo. El fenómeno eleva el índice de pérdidas, reduce ingresos y complica el cumplimiento de las metas regulatorias de control de pérdidas.

#### 1.3.2 ¿A quién o a qué afecta este problema?

Afecta a CENS (ingresos, liquidez y desempeño regulatorio), a los clientes y usuarios que asumen parte del costo en la tarifa, a las zonas geográficas de mayor incidencia —en especial el Catatumbo— y a los equipos de Distribución, Comercial y de campo, que concentran revisiones con poca priorización analítica.

#### 1.3.3 ¿Cuántos se ven afectados y en qué medida?

CENS atiende más de 640.000 clientes. El índice de pérdidas cerró en 14,30 % en 2025 y en el Catatumbo alcanzó 47,84 %. Ese mismo año se recuperaron 29,85 GWh, en gran medida mediante revisiones en campo. El impacto es de gran magnitud sobre el balance energético del área de influencia y, de forma crítica, sobre un subconjunto de circuitos y usuarios en zonas de difícil acceso.

#### 1.3.4 ¿Por qué resolver este problema es una prioridad para la organización en este momento?

El indicador mejora con lentitud (0,08 puntos porcentuales frente a 2024), el acceso a zonas críticas está restringido por el orden público y la liquidez está tensionada por factores externos (subsidios y opción tarifaria). Al mismo tiempo, CENS dispone de capacidad tecnológica (Azure, datos comerciales y de red, piloto SafeGRID) para priorizar intervenciones antes de la migración a SAP Saphiro en 2027.

#### 1.3.5 ¿Cómo han intentado enfrentar este problema y cuál ha sido el resultado?

| Esfuerzo | Resultado |
|---|---|
| Revisiones y control en campo | Recuperación de 29,85 GWh en 2025; alto costo operativo y dependencia del acceso físico. |
| Gestión comercial en zonas críticas | Limitada por orden público y por la capacidad de pago de algunos segmentos. |
| Piloto SafeGRID | TRL 7; más de 1.000 kWh recuperados por usuario al mes en prueba; aún sin servicio operativo permanente. |

#### 1.3.6 ¿Qué otros grupos o interesados deben participar en el alcance y la implementación?

| Ámbito | Interesados |
|---|---|
| Internos | Gestión de pérdidas / Distribución; Comercial; TI (datos e infraestructura); innovación (CENSNNOVA); cuadrillas y supervisores de campo; áreas de riesgo y cumplimiento. |
| Grupo empresarial | EPM (SCADA, ERP/Saphiro y lineamientos de grupo). |
| Externos | CREG (metas de pérdidas); usuarios priorizados para intervención; contratistas de inspección cuando aplique; autoridades locales en zonas de acceso restringido. |

### 1.4 Objetivo de negocio del proyecto

Priorizar intervenciones de campo y de control sobre clientes y circuitos con mayor riesgo de pérdida no técnica, para recuperar más energía con la misma o menor capacidad de inspección. El resultado esperado es mayor energía recuperada y mejor uso de cuadrillas, dentro de las restricciones de liquidez, acceso territorial y protección de datos personales (Ley 1581).

## 2. Alcance y limitaciones

### Alcance

- **Dentro del alcance:** priorización analítica de clientes y circuitos con mayor riesgo de pérdida no técnica; identificación geográfica de puntos (circuitos, transformadores o zonas) donde, a partir de estudios técnicos y de medidas de consumo y red, se pueda deducir o predecir robos de energía; generación de listas de intervención para Distribución, Comercial y campo; uso de datos comerciales, de medición y de red disponibles en CENS; evolución del piloto SafeGRID hacia un servicio operable.
- **Fuera del alcance:** normalización integral de la red; solución del acceso físico al Catatumbo; reemplazo del ERP ni la migración a SAP Saphiro; creación completa de la unidad de ciencia de datos (solo el caso de uso de pérdidas).

### Limitaciones

- Dependencia de la calidad e integración de los datos existentes (silos SCADA, comercial y ERP).
- Capacidad limitada de las cuadrillas para atender las listas priorizadas.
- Restricciones de orden público en zonas críticas.
- Cumplimiento de la Ley 1581 de 2012 en el tratamiento de datos de clientes.
- Restricciones de liquidez que exigen resultados medibles en el corto plazo.
