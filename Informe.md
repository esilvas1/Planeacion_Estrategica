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
