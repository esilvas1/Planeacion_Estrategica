<div align="center">

![](img/Logo_Pontificia_Javeriana.png){width=55%}

<br><br>

# Taller: Ejecución de proyecto

### Unidad 2: Ejecución de proyectos en ciencia de datos

### Caso: Centrales Eléctricas del Norte de Santander (CENS) – Grupo EPM

### Proyecto: Detección y priorización de pérdidas de energía no técnicas

<br><br>

**Integrantes:**

Catherine Salazar Pupiales

Edwin Silva Salas

Edwin Heano Ochoa
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

## 2. Mensaje de cierre de la reunión

El mensaje que cierra la sesión es este:

**Quedamos alineados: el proyecto arranca con metas claras de negocio, alcance cerrado y dueños de datos y de operación definidos. En los próximos 30 días TI, EPM y el equipo analítico habilitan el acceso a SAC, GTECH y SCADA, y Distribución y Comercial confirman cómo usarán las listas en campo y en normalización. El éxito lo mediremos en energía recuperada por visita, en el índice de pérdidas y en la cobertura de zonas críticas, no en la complejidad del modelo. Nos vemos en el primer seguimiento quincenal con avances concretos y riesgos actualizados.**

## 3. Grupos de interés del proyecto (stakeholders)

Los grupos de interés del proyecto se organizan en clientes internos de CENS, actores del Grupo EPM y clientes / interesados externos. La caracterización parte de los interesados ya identificados en el scoping y los detalla según interés, influencia e implicación en la ejecución.

### 3.1 Clientes internos

| Grupo de interés | Interés en el proyecto | Influencia | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| Dirección de Distribución / gestión de pérdidas | Bajar pérdidas no técnicas y recuperar más energía con el mismo cupo de cuadrillas. | Alta | Patrocinador de negocio y dueño de las metas de eficiencia, efectividad y equidad. | Ranking confiable, resultados medibles (kWh/visita e índice) y que las zonas críticas no salgan del seguimiento. |
| Área Comercial | Convertir la priorización en normalización, corrección de medición y energía facturable. | Alta | Cliente interno de las listas de usuarios y ejecutor de la Acción 3. | Listas claras, trazabilidad de casos y manejo cuidadoso de usuarios vulnerables. |
| Cuadrillas y supervisores de campo | Recibir rutas priorizadas y factibles de ejecutar. | Media-alta | Usuarios finales de las listas de inspección (Acción 1). | Menos visitas improductivas, protocolo ante falsos positivos y respeto a restricciones de orden público. |
| TI (datos e infraestructura) | Integrar SAC, GIS y SCADA en Azure sin poner en riesgo producción. | Alta | Custodio técnico de plataformas, accesos y entorno de despliegue. | Reglas de acceso, calidad mínima de datos y carga controlada sobre sistemas vivos. |
| CENSNNOVA | Pasar SafeGRID de piloto a servicio operable. | Media | Innovación y continuidad tecnológica del caso de uso. | Producto con dueño, backlog y operación continua, no un prototipo aislado. |
| Distribución / inventario GIS (GTECH) | Que el inventario de red alimente el ranking geográfico. | Media | Dueño del modelo espacial de circuitos, transformadores y topología. | Uso controlado de la información de infraestructura crítica. |
| Protección de datos / riesgo y cumplimiento | Cumplir Ley 1581 y políticas de CENS / EPM. | Media | Valida tratamiento de datos personales y riesgos de uso indebido. | Minimización de campos, controles de acceso y auditoría. |
| Equipo del proyecto (núcleo analítico) | Entregar el MVP y sostener el producto de priorización. | Alta (ejecución) | Diseña, construye, valida y despliega el ranking y las listas. | Acceso oportuno a datos, decisiones de negocio estables y criterios de éxito claros. |

### 3.2 Grupo empresarial

| Grupo de interés | Interés en el proyecto | Influencia | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| EPM (Centro de Control / SCADA, ERP-Saphiro, lineamientos de grupo) | Proteger la operación de red y alinear el caso de uso con estándares del grupo. | Alta sobre datos SCADA y lineamientos | Autoriza acceso a SCADA, condiciona integración futura con SAP Saphiro y fija políticas de grupo. | Acuerdos formales de acceso, ciberseguridad de ciberactivos y no interferencia con el Centro de Control. |

### 3.3 Clientes e interesados externos

| Grupo de interés | Interés en el proyecto | Influencia | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| Usuarios priorizados para intervención | Recibir un trato justo si son visitados o normalizados. | Baja-media (reclamos y reputación) | Destinatarios de inspecciones y gestión comercial. | Explicación clara del motivo de la gestión, canales de reclamación y que un score no equivalga a sanción automática. |
| Usuarios del servicio en general | Que el control de pérdidas no técnicas no se traduzca en mayor carga injustificada en la tarifa. | Baja | Beneficiarios indirectos si mejora el índice de pérdidas. | Transparencia institucional y protección de datos personales. |
| CREG | Cumplimiento de metas y reglas de pérdidas en distribución. | Alta (marco regulatorio) | Define el entorno normativo que hace prioritario el control de pérdidas. | Indicadores creíbles y gestión conforme a la regulación, sin que el modelo sustituya obligaciones del prestador. |
| SSPD | Vigilancia de la calidad del servicio y atención a quejas. | Media | Supervisa desempeño y puede recibir PQR asociadas a intervenciones. | Manejo responsable de quejas y de la información de vigilancia. |
| Contratistas de inspección (cuando aplique) | Ejecutar visitas asignadas con información suficiente. | Baja-media | Extienden capacidad de campo bajo instrucción de CENS. | Listas operativas, criterios de inspección y registro de resultados. |
| Autoridades locales en zonas de acceso restringido | Seguridad y orden en el territorio. | Media en zonas críticas | Condicionan si una visita programada puede ejecutarse. | Coordinación cuando el ingreso dependa de condiciones de orden público. |

### 3.4 Lectura de la caracterización

Los **clientes internos prioritarios** son Distribución / pérdidas, Comercial y las cuadrillas: de ellos depende que el ranking se convierta en energía recuperada. TI y EPM son **habilitadores críticos**: sin su acceso a SAC, GTECH y SCADA el proyecto no arranca. CENSNNOVA y el equipo analítico sostienen la continuidad del producto. Entre los externos, CREG fija la presión regulatoria del caso, mientras que los usuarios priorizados concentran el riesgo reputacional y ético del proyecto.

## 4. Mínimo producto viable (MPV)

El MPV del proyecto es la interfaz **CENS · Prioriza Pérdidas**, publicada en GitHub Pages: [esilvas1.github.io/Planeacion_Estrategica/mvp/](https://esilvas1.github.io/Planeacion_Estrategica/mvp/). Simula un producto operable de priorización de pérdidas no técnicas con datos mock y un ranking geográfico sobre el área de influencia de CENS.

**Qué entrega el MPV.** Mapa de riesgo con puntos en municipios del área de servicio, lista priorizada de inspección en campo, lista de normalización comercial, ficha de detalle con señales SAC / GTECH / SCADA, asignación a cuadrilla dentro de un cupo semanal y panel de seguimiento (lift, equidad territorial y falsos positivos).

## 5. Reunión de cierre del proyecto

Se asume que el MPV constituye la entrega final del proyecto. La reunión de cierre presenta resultados, valor generado, lecciones aprendidas y acuerdos de continuidad operativa del ranking y de las listas.

### 5.1 Mensaje de la reunión de cierre

**Cerramos el proyecto con un producto usable: CENS ya puede priorizar visitas y gestiones comerciales con un ranking geográfico de riesgo. El valor no está en el algoritmo por sí solo, sino en recuperar más energía con el mismo cupo de cuadrillas, aportar al índice de pérdidas y mantener las zonas críticas en el seguimiento. El MPV queda en manos de Distribución, Comercial y TI para piloto operativo, con el score como apoyo a la decisión y no como sanción automática.**

### 5.2 Quiénes están invitados

Asisten los mismos interesados de la reunión de inicio (sección 1.2): Distribución / pérdidas, Comercial, cuadrillas, TI, CENSNNOVA, GIS, protección de datos, enlace EPM/SCADA y el equipo del proyecto. En el cierre el foco ya no es abrir el alcance ni negociar accesos, sino **validar resultados, ver la demo del MPV y acordar la continuidad operativa**.

### 5.3 Agenda de la reunión de cierre

Duración: **60 minutos**.

| Tiempo | Tema | Responsable | Resultado esperado |
|---|---|---|---|
| 0–5 min | Apertura y objetivo de la reunión de cierre | Gestor de productos | Asistentes alineados sobre el cierre. |
| 5–15 min | Resultados frente a las metas (kWh/visita, índice, equidad territorial) | Asesor analítico + Distribución | Lectura compartida del valor de negocio logrado / simulado en el piloto. |
| 15–30 min | Demostración del MPV (mapa, listas de campo y comercial, ficha y asignación) | Científico de datos + Analista de negocio | Sponsors y usuarios ven el producto en uso. |
| 30–40 min | Adopción operativa: quién opera el ranking, frecuencia de recálculo y protocolo ante falsos positivos | Enlaces de Distribución y Comercial + supervisores | Acuerdos de uso post-proyecto. |
| 40–50 min | Lecciones aprendidas, riesgos remanentes (datos, orden público, acceso SCADA) y ética | Gestor de productos + Protección de datos | Lecciones documentadas y riesgos transferidos a operación. |
| 50–60 min | Acta de cierre, entregables, responsables de continuidad y próximos pasos | Gestor de productos | Proyecto cerrado formalmente con dueños claros. |

### 5.4 Lecciones aprendidas

1. **La meta de negocio debe preceder al modelo.** Medir kWh por visita, aporte al índice y cobertura de zonas críticas evitó convertir el proyecto en un ejercicio solo técnico.
2. **Sin acceso a SAC, GTECH y SCADA no hay producto.** Los acuerdos tempranos con TI y EPM condicionan el cronograma más que la elección del algoritmo.
3. **El MPV gana cuando se centra en la decisión operativa.** Ranking, listas y registro de visita aportan más valor inmediato que un modelo complejo sin interfaz usable.
4. **La equidad territorial no se improvisa.** Mantener el Catatumbo y otras zonas de difícil acceso en el ranking, aunque la visita se posponga, evita sesgar la operación solo a zonas fáciles.
5. **El score no reemplaza el criterio humano.** Falsos positivos, usuarios vulnerables y Ley 1581 exigen protocolo de campo y decisión asistida, no automatización de sanciones.
6. **SafeGRID necesita dueño y continuidad.** El paso de piloto a servicio operable depende de backlog, operación y adopción por Distribución y Comercial, no solo de un entregable puntual.

## 6. Conclusiones

CENS enfrenta pérdidas de energía no técnicas asociadas a hurto, fraude y anomalías de medición, con un índice de 14,30 % en 2025 y hasta 47,84 % en el Catatumbo. El proyecto de detección y priorización ataca ese problema en el punto donde más duele la operación: decidir a quién visitar y en qué orden, para recuperar más energía con la misma capacidad de cuadrillas.

La solución propuesta no sustituye las revisiones de campo ni la gestión comercial: las orienta. Al cruzar SAC, GTECH y SCADA (Spectrum Power 7), el ranking geográfico de riesgo concentra inspecciones y normalizaciones donde el retorno esperado en kWh es mayor, reduce visitas improductivas y mantiene en seguimiento las zonas de alta incidencia aunque el acceso esté restringido por orden público. En ese sentido, la detección de robo y fraude deja de depender solo de la experiencia local o de listados poco priorizados, y pasa a apoyarse en señales de consumo, red y ubicación.

El valor para la empresa se mide en energía recuperada por intervención, aporte a la baja del índice de pérdidas y uso más eficiente del cupo operativo, en la línea abierta por SafeGRID. Ese valor solo se materializa si Distribución, Comercial y campo adoptan las listas, si TI y EPM sostienen el acceso a los datos y si el score se usa como apoyo a la decisión, no como sanción automática, bajo Ley 1581.

En síntesis, frente al robo y la recuperación de energía en el área de influencia de CENS, el proyecto concluye que la prioridad no es un modelo más complejo, sino un producto operable de priorización que convierta datos ya existentes en intervenciones más efectivas, medibles y territorialmente responsables.

## Referencias

[1] Hexagon. (2022). *Hexagon announces HxGN NetWorks, rebrands utilities and communications offerings* (incluye el renombrado de Intergraph G/Technology, conocido en operación como GTECH). Disponible en: [https://hexagon.com/company/newsroom/press-releases/2022/hexagon-announces-hxgn-networks-rebrands-utilities-and-communications-offerings](https://hexagon.com/company/newsroom/press-releases/2022/hexagon-announces-hxgn-networks-rebrands-utilities-and-communications-offerings)

[2] ACTSIS / Universidad Industrial de Santander. *Sistema de Administración Comercial (SAC)*: sistema de administración y gestión de procesos de comercialización de servicios públicos (energía y afines). Disponible en: [https://noesis.uis.edu.co/handle/20.500.14071/27087](https://noesis.uis.edu.co/handle/20.500.14071/27087)

[3] Centrales Eléctricas del Norte de Santander S.A. E.S.P. (CENS). (2021). *Informe del revisor fiscal*: identifica el aplicativo SAC sobre base de datos Oracle como sistema de información comercial. Disponible en: [https://www.cens.com.co/Portals/cens/menu-transparencia/mecanismos-de-control/revisoria-fiscal/RF2021.pdf](https://www.cens.com.co/Portals/cens/menu-transparencia/mecanismos-de-control/revisoria-fiscal/RF2021.pdf)

[4] Siemens. *Spectrum Power Advanced Distribution Management (ADMS)*: plataforma que integra funcionalidad SCADA (familia Spectrum Power, incl. Spectrum Power 7 / SP7) para monitoreo, alarma, medición y control de redes de distribución. Disponible en: [https://www.siemens.com/global/en/products/energy/grid-software/operation/grid-control/advanced-distribution-management.html](https://www.siemens.com/global/en/products/energy/grid-software/operation/grid-control/advanced-distribution-management.html)

[5] Siemens. *Spectrum Power ADMS – módulos* (documento técnico): describe el módulo SCADA y su integración con GIS, CIS y aplicaciones de operación (DMS/OMS). Disponible en: [https://assets.new.siemens.com/siemens/assets/api/uuid:6be45822-9bad-4f93-ac98-d4fbee5d622f/interactive-pdf-for-ADMS-modules.pdf](https://assets.new.siemens.com/siemens/assets/api/uuid:6be45822-9bad-4f93-ac98-d4fbee5d622f/interactive-pdf-for-ADMS-modules.pdf)

[6] Dubovikov, K. (2019). *Managing Data Science: Effective Strategies to Manage Data Science Projects and Build a Sustainable Team*. Cap. 9, *Common Pitfalls of Data Science Projects*. Packt Publishing.

[7] República de Colombia. (2012). *Ley 1581 de 2012* (protección de datos personales). Disponible en: [https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=49981](https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=49981)

[8] Centrales Eléctricas del Norte de Santander S.A. E.S.P. (CENS). Sitio institucional. Disponible en: [https://www.cens.com.co/](https://www.cens.com.co/)

[9] Equipo del taller. *CENS · Prioriza Pérdidas* (MPV). GitHub Pages. Disponible en: [https://esilvas1.github.io/Planeacion_Estrategica/mvp/](https://esilvas1.github.io/Planeacion_Estrategica/mvp/)

