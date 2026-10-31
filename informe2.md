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

### 1.1 Organización y entorno

CENS (Centrales Eléctricas del Norte de Santander S.A. E.S.P.) es una empresa del [Grupo EPM](https://www.cens.com.co/) que presta el servicio de energía eléctrica de forma segura, eficiente y confiable en Norte de Santander, el sur del Cesar y el sur de Bolívar. Atiende a más de 640.000 clientes, opera cerca de 29.700 km de red y ofrece, además del servicio básico, soluciones de movilidad eléctrica, energía solar y servicios complementarios.

Opera en un entorno regulado (CREG), con presión por calidad del servicio (SAIDI, SAIFI), control de pérdidas y liquidez (subsidios y opción tarifaria). En 2025 recuperó 29,85 GWh por gestión de pérdidas, pero el índice permanece en 14,30 % y en el Catatumbo llega a 47,84 %, zona donde el orden público restringe el trabajo en campo.

En el frente digital cuenta con desarrollos en Azure, el piloto SafeGRID y una gestión consolidada por indicadores. No existe una unidad formal de ciencia de datos: la analítica depende de TI y de iniciativas puntuales que no siempre se consolidan en operación continua.

### 1.2 Problema de negocio

| Aspecto | Descripción |
|---|---|
| **Problema** | Pérdidas de energía no técnicas (hurto, fraude, anomalías de medición o consumo) que elevan el índice de pérdidas y reducen ingresos. |
| **Afectados** | La empresa (ingresos, liquidez y cumplimiento regulatorio), los usuarios que asumen el costo en tarifa y las zonas de mayor incidencia, en particular el Catatumbo. |
| **Magnitud** | Índice de pérdidas 14,30 % (2025); 47,84 % en el Catatumbo. Recuperación de 29,85 GWh, apoyada en gran medida en revisiones en campo. |
| **Prioridad actual** | El indicador mejora con lentitud, el acceso a zonas críticas es limitado y la liquidez está tensionada; a la vez hay capacidad tecnológica (Azure, datos comerciales y de red) para priorizar intervenciones. |
| **Esfuerzos previos** | Revisiones en campo, esquemas de control de pérdidas y el piloto SafeGRID (TRL 7; más de 1.000 kWh/mes recuperados por usuario en prueba), todavía sin un servicio operativo permanente. |
| **Actores involucrados** | Distribución y gestión de pérdidas, Comercial, TI, innovación (CENSNNOVA), equipos de campo y, cuando corresponda, EPM por la administración de SCADA y del ERP. |

### 1.3 Objetivo de negocio del proyecto

El proyecto busca **priorizar intervenciones de campo y de control** sobre clientes y circuitos con mayor riesgo de pérdida no técnica, de modo que se recupere más energía con la misma o menor capacidad de inspección. El modelo predictivo es el medio; el resultado esperado es mayor energía recuperada y mejor uso de cuadrillas, dentro de las restricciones de liquidez, acceso territorial y protección de datos personales (Ley 1581).
