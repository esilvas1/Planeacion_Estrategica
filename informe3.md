<div align="center">

![](img/Logo_Pontificia_Javeriana.png){width=55%}

<br><br>

# Taller: Ejecución de proyecto

### Unidad 2: Ejecución de proyectos en ciencia de datos

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

Unidad 2

Maestría en Ciencia de Datos

Pontificia Universidad Javeriana Cali

<br>

Santiago de Cali, noviembre de 2026

</div>

<div style="page-break-after: always;"></div>

---

## 1. Planeación de la reunión de inicio del proyecto

CENS convoca la reunión de inicio para poner en marcha el proyecto *Detección y priorización de pérdidas de energía no técnicas*. En ella se confirman las metas de negocio, el alcance, el acceso a SAC, GTECH y SCADA, y el plan de trabajo de los primeros meses, de modo que Distribución, Comercial, TI, campo y el equipo analítico partan con el mismo entendimiento del problema y de lo que sí y no hará el proyecto.

### 1.1 Mensaje de la reunión

El mensaje que se comunica a los asistentes es el siguiente:

**Hoy arranca en CENS un proyecto para decidir mejor a quién visitar y en qué orden, con el fin de recuperar más energía con la misma capacidad de cuadrillas. Vamos a medir el éxito en kWh recuperados por visita, en el aporte al índice de pérdidas y en la cobertura de zonas críticas en el ranking. El modelo es un medio. La decisión operativa y el valor para la empresa son el fin.**

En la misma intervención se precisan los compromisos del proyecto:

1. **Metas:** mejorar al menos 20 % los kWh recuperados por visita frente a la línea base operativa, aportar a una reducción de al menos 0,30 puntos porcentuales del índice de pérdidas (14,30 % en 2025) y mantener en el ranking al menos el 95 % de las zonas de alta incidencia.
2. **Operación que se refuerza:** inspección en campo, actualización del ranking geográfico de riesgo y normalización comercial sobre usuarios priorizados.
3. **Analítica prevista:** balances y descripción de la red, detección de anomalías y scoring de riesgo para ordenar visitas, con apoyo en Azure y en la línea de SafeGRID.
4. **Datos:** uso de SAC, GTECH y SCADA (Siemens SP7), con acuerdos de acceso, en particular con EPM para SCADA, bajo Ley 1581.
5. **Límites:** el proyecto prioriza intervenciones y lleva SafeGRID hacia un servicio operable. No resuelve el acceso físico al Catatumbo, no reemplaza el ERP ni SAP Saphiro y no crea por sí solo toda la unidad de ciencia de datos.

El primer producto operable será un MVP con ranking y listas de intervención. Los experimentos, cambios de requisitos y decisiones se registran para no perder el hilo técnico ni el de negocio (Dubovikov, 2019).

### 1.2 Quiénes están invitados

| Ámbito | Invitado | Motivo de la invitación |
|---|---|---|
| Interno | Dirección de Distribución / gestión de pérdidas | Dueño del problema y de las metas de eficiencia, efectividad y equidad. |
| Interno | Área Comercial | Ejecuta normalización y ve el impacto en facturación y usuarios. |
| Interno | TI (datos e infraestructura) | Custodia de plataformas, Azure y acceso a datos. |
| Interno | CENSNNOVA | Continuidad de SafeGRID hacia un servicio operable. |
| Interno | Supervisores de cuadrillas / gestión de pérdidas | Usan el ranking y las listas de visita en campo. |
| Interno | Distribución / inventario GIS (GTECH) | Dueño del modelo geográfico de la red. |
| Interno | Protección de datos / riesgo y cumplimiento | Uso de datos personales del SAC bajo Ley 1581. |
| Grupo EPM | Centro de Control / enlace EPM (SCADA) | Acceso a medidas y eventos de red. |
| Equipo del proyecto | Equipo núcleo ya definido en el plan de recursos (seis personajes, apoyo GIS y enlaces de Distribución y Comercial) | Presentan alcance, plan técnico, riesgos y próximos pasos. |

CREG, SSPD, usuarios priorizados, contratistas de inspección y autoridades locales no asisten a esta reunión: se gestionan por canales institucionales.

### 1.3 Agenda de la reunión

Duración: **90 minutos**.

| Tiempo | Tema | Responsable | Resultado esperado |
|---|---|---|---|
| 0–10 min | Apertura, objetivo de la reunión y forma de tomar decisiones | Gestor de productos | Asistentes alineados sobre el propósito de la sesión. |
| 10–25 min | Problema de pérdidas, valor para CENS y metas (kWh/visita, índice, equidad) | Asesor analítico + Dirección de Distribución / Analista de negocio | Metas confirmadas o con ajustes menores. |
| 25–40 min | Alcance, fuera de alcance, orden público, liquidez y Ley 1581 | Gestor de productos + Protección de datos | Alcance cerrado y restricciones reconocidas. |
| 40–55 min | Uso de las salidas en inspección, ranking y normalización | Analista de negocio + Enlace de Distribución + Enlace Comercial + supervisores | Roles de decisión y ejecución claros por área. |
| 55–70 min | Acceso a SAC, GTECH y SCADA, modelo de datos e integración en Azure | Arquitecto de datos + Modelador de datos + Especialista GIS + TI + enlace EPM | Compromisos de acceso, diseño de cruce y fechas para datos listos. |
| 70–80 min | MVP (ranking y listas), criterios de éxito y registro de experimentos | Científico de datos | Prioridad en features núcleo, sin sobrediseñar el primer entregable. |
| 80–90 min | Cronograma de 12 meses, hitos, responsables del equipo núcleo, riesgos y acuerdos | Gestor de productos + Asesor analítico | Acta con decisiones, dueños y plan de los próximos 30 días. |

Tres días antes se envían el resumen del proyecto (problema, metas, acciones y datos), el fuera de alcance, el borrador de acuerdos de acceso y esta agenda.

Al cerrar la sesión deben quedar: acta aprobada, metas confirmadas, lista de accesos a datos con dueños y fechas, responsables confirmados según el plan de recursos, fecha del primer seguimiento quincenal y registro de riesgos abiertos (calidad de datos, orden público y capacidad de cuadrillas).

## 2. Mensaje de cierre de la reunión

El mensaje que cierra la sesión es este:

**Quedamos alineados: el proyecto arranca con metas claras de negocio, alcance cerrado y dueños de datos y de operación definidos. En los próximos 30 días TI, EPM y el equipo analítico habilitan el acceso a SAC, GTECH y SCADA, y Distribución y Comercial confirman cómo usarán las listas en campo y en normalización. El éxito lo mediremos en energía recuperada por visita, en el índice de pérdidas y en la cobertura de zonas críticas, no en la complejidad del modelo. Nos vemos en el primer seguimiento quincenal con avances concretos y riesgos actualizados.**


