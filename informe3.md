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

Edwin Henao Ochoa
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

### 1.1 Mensaje general de la reunión

**Hoy arranca en CENS un proyecto para decidir mejor a quién visitar y en qué orden, con el fin de recuperar más energía con la misma capacidad de cuadrillas. Vamos a medir el éxito en kWh recuperados por visita, en el aporte al índice de pérdidas y en la cobertura de zonas críticas en el ranking. El modelo es un medio. La decisión operativa y el valor para la empresa son el fin.**

Compromisos que se confirman en la apertura:

1. **Metas:** mejorar al menos 20 % los kWh recuperados por visita frente a la línea base operativa, aportar a una reducción de al menos 0,30 puntos porcentuales del índice de pérdidas (14,30 % en 2025) y mantener en el ranking al menos el 95 % de las zonas de alta incidencia.
2. **Operación que se refuerza:** inspección en campo, actualización del ranking geográfico de riesgo y normalización comercial sobre usuarios priorizados.
3. **Analítica prevista:** balances y descripción de la red, detección de anomalías y scoring de riesgo para ordenar visitas, con apoyo en Azure y en la línea de SafeGRID.
4. **Datos:** uso de SAC, GTECH y SCADA (Siemens SP7), con acuerdos de acceso, en particular con EPM para SCADA, bajo Ley 1581.
5. **Límites:** el proyecto prioriza intervenciones y lleva SafeGRID hacia un servicio operable. No resuelve el acceso físico al Catatumbo, no reemplaza el ERP ni SAP Saphiro y no crea por sí solo toda la unidad de ciencia de datos.

El primer producto operable será un MVP con ranking y listas de intervención. Los experimentos, cambios de requisitos y decisiones se registran para no perder el hilo técnico ni el de negocio (Dubovikov, 2019).

### 1.2 Tipos de invitados y mensaje específico para cada uno

| Tipo de invitado | Quiénes | Motivo de la invitación | Mensaje específico de apertura |
|---|---|---|---|
| Patrocinio de negocio | Dirección de Distribución / gestión de pérdidas | Dueño del problema y de las metas de eficiencia, efectividad y equidad. | *Ustedes validan las metas de kWh/visita, aporte al índice y equidad territorial. Sin su decisión de adopción el ranking no se convierte en recuperación de energía.* |
| Cliente operativo comercial | Área Comercial | Ejecuta normalización y ve el impacto en facturación y usuarios. | *El proyecto les entrega listas priorizadas para normalización. Su rol es definir cómo se usan, con trazabilidad y cuidado de usuarios vulnerables.* |
| Usuario de campo | Supervisores de cuadrillas / gestión de pérdidas | Usan el ranking y las listas de visita en campo. | *Recibirán rutas ordenadas por riesgo y cupo semanal. Pedimos su criterio sobre factibilidad, falsos positivos y zonas de acceso restringido.* |
| Habilitador técnico | TI (datos e infraestructura) | Custodia de plataformas, Azure y acceso a datos. | *Necesitamos acceso controlado a SAC, GTECH y entorno Azure sin afectar producción. Ustedes fijan las reglas de seguridad y calidad mínima de datos.* |
| Continuidad innovadora | CENSNNOVA | Continuidad de SafeGRID hacia un servicio operable. | *Este proyecto cierra el paso de piloto a producto con dueño, backlog y operación. SafeGRID deja de ser un experimento aislado.* |
| Dueño de datos espaciales | Distribución / inventario GIS (GTECH) | Dueño del modelo geográfico de la red. | *El ranking geográfico depende de su inventario. Acordamos uso controlado de circuitos, transformadores y topología.* |
| Cumplimiento | Protección de datos / riesgo y cumplimiento | Uso de datos personales del SAC bajo Ley 1581. | *El tratamiento de datos personales del SAC queda bajo minimización, control de acceso y auditoría. El score no es sanción automática.* |
| Habilitador de grupo | Centro de Control / enlace EPM (SCADA) | Acceso a medidas y eventos de red. | *Requerimos acuerdo formal de lectura de SCADA (SP7), sin interferir con el Centro de Control y con ciberseguridad de ciberactivos.* |
| Equipo ejecutor | Equipo núcleo del proyecto (seis roles, apoyo GIS y enlaces Distribución/Comercial) | Presentan alcance, plan técnico, riesgos y próximos pasos. | *Ustedes sostienen el plan: alcance cerrado, MVP, registro de experimentos y seguimiento quincenal con riesgos actualizados.* |

CREG, SSPD, usuarios priorizados, contratistas de inspección y autoridades locales no asisten a esta reunión: se gestionan por canales institucionales (sección 3).

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

## 2. Mensaje de cierre de la reunión de inicio

### 2.1 Mensaje general de cierre

**Quedamos alineados: el proyecto arranca con metas claras de negocio, alcance cerrado y dueños de datos y de operación definidos. En los próximos 30 días TI, EPM y el equipo analítico habilitan el acceso a SAC, GTECH y SCADA, y Distribución y Comercial confirman cómo usarán las listas en campo y en normalización. El éxito lo mediremos en energía recuperada por visita, en el índice de pérdidas y en la cobertura de zonas críticas, no en la complejidad del modelo. Nos vemos en el primer seguimiento quincenal con avances concretos y riesgos actualizados.**

### 2.2 Mensaje de cierre por tipo de invitado

| Tipo de invitado | Mensaje de cierre |
|---|---|
| Patrocinio de negocio (Distribución / pérdidas) | *Confirmamos las metas. En 30 días revisamos el primer avance del ranking y la línea base de kWh/visita. Su decisión de adopción queda como hito del piloto.* |
| Cliente operativo comercial | *Queda pendiente formalizar el protocolo de normalización con las listas priorizadas y el manejo de usuarios vulnerables. Traen ese acuerdo al primer seguimiento.* |
| Usuario de campo (cuadrillas) | *Recibirán el borrador de lista de visita y el protocolo ante falsos positivos. Su feedback de factibilidad cierra el diseño del cupo semanal.* |
| Habilitador técnico (TI) | *Compromiso: habilitar accesos a SAC/GTECH y el entorno Azure en el plazo acordado, con reglas de seguridad documentadas.* |
| Continuidad innovadora (CENSNNOVA) | *SafeGRID queda en la ruta a servicio operable: backlog compartido con el equipo del proyecto y dueño de producto identificado.* |
| Dueño de datos espaciales (GIS / GTECH) | *Entregan el subset de inventario autorizado para el cruce geográfico y validan el uso en el ranking.* |
| Cumplimiento (protección de datos) | *Revisan la ficha de minimización de campos del SAC y los controles de acceso antes del primer extracto de datos.* |
| Habilitador de grupo (EPM / SCADA) | *Avanzamos el acuerdo formal de lectura SCADA; sin ese visto bueno no se integra la señal de red al scoring.* |
| Equipo ejecutor | *Activan el plan de 30 días, el registro de experimentos y la convocatoria del seguimiento quincenal.* |

## 3. Grupos de interés del proyecto (stakeholders)

Los grupos de interés del proyecto se organizan en clientes internos de CENS, actores del Grupo EPM y clientes / interesados externos. La caracterización parte de los interesados ya identificados en el scoping y los detalla según interés, influencia e implicación en la ejecución.

### 3.1 Clientes internos

| Grupo de interés | Interés en el proyecto | Influencia / poder | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| Dirección de Distribución / gestión de pérdidas | Alto | Alto | Patrocinador de negocio y dueño de las metas de eficiencia, efectividad y equidad. | Ranking confiable, resultados medibles (kWh/visita e índice) y que las zonas críticas no salgan del seguimiento. |
| Área Comercial | Alto | Alto | Cliente interno de las listas de usuarios y ejecutor de la Acción 3. | Listas claras, trazabilidad de casos y manejo cuidadoso de usuarios vulnerables. |
| Cuadrillas y supervisores de campo | Alto | Medio | Usuarios finales de las listas de inspección (Acción 1). | Menos visitas improductivas, protocolo ante falsos positivos y respeto a restricciones de orden público. |
| TI (datos e infraestructura) | Medio | Alto | Custodio técnico de plataformas, accesos y entorno de despliegue. | Reglas de acceso, calidad mínima de datos y carga controlada sobre sistemas vivos. |
| CENSNNOVA | Alto | Medio | Innovación y continuidad tecnológica del caso de uso. | Producto con dueño, backlog y operación continua, no un prototipo aislado. |
| Distribución / inventario GIS (GTECH) | Medio | Medio | Dueño del modelo espacial de circuitos, transformadores y topología. | Uso controlado de la información de infraestructura crítica. |
| Protección de datos / riesgo y cumplimiento | Medio | Medio | Valida tratamiento de datos personales y riesgos de uso indebido. | Minimización de campos, controles de acceso y auditoría. |
| Equipo del proyecto (núcleo analítico) | Alto | Medio (ejecución) | Diseña, construye, valida y despliega el ranking y las listas. | Acceso oportuno a datos, decisiones de negocio estables y criterios de éxito claros. |

### 3.2 Grupo empresarial

| Grupo de interés | Interés en el proyecto | Influencia / poder | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| EPM (Centro de Control / SCADA, ERP-Saphiro, lineamientos de grupo) | Medio | Alto | Autoriza acceso a SCADA, condiciona integración futura con SAP Saphiro y fija políticas de grupo. | Acuerdos formales de acceso, ciberseguridad de ciberactivos y no interferencia con el Centro de Control. |

### 3.3 Clientes e interesados externos

| Grupo de interés | Interés en el proyecto | Influencia / poder | Rol / implicación | Qué espera / qué necesita |
|---|---|---|---|---|
| Usuarios priorizados para intervención | Alto | Bajo | Destinatarios de inspecciones y gestión comercial. | Explicación clara del motivo de la gestión, canales de reclamación y que un score no equivalga a sanción automática. |
| Usuarios del servicio en general | Bajo | Bajo | Beneficiarios indirectos si mejora el índice de pérdidas. | Transparencia institucional y protección de datos personales. |
| CREG | Medio | Alto | Define el entorno normativo que hace prioritario el control de pérdidas. | Indicadores creíbles y gestión conforme a la regulación, sin que el modelo sustituya obligaciones del prestador. |
| SSPD | Medio | Medio | Supervisa desempeño y puede recibir PQR asociadas a intervenciones. | Manejo responsable de quejas y de la información de vigilancia. |
| Contratistas de inspección (cuando aplique) | Medio | Bajo | Extienden capacidad de campo bajo instrucción de CENS. | Listas operativas, criterios de inspección y registro de resultados. |
| Autoridades locales en zonas de acceso restringido | Medio | Medio | Condicionan si una visita programada puede ejecutarse. | Coordinación cuando el ingreso dependa de condiciones de orden público. |

### 3.4 Matriz de interés-poder

La posición de cada grupo se resume en la matriz interés–poder. El interés mide cuánto les afecta el resultado del proyecto; el poder, su capacidad de habilitar, bloquear o condicionar la ejecución.

|  | **Interés bajo** | **Interés alto** |
|---|---|---|
| **Poder alto** | **Mantener satisfechos:** EPM (SCADA / lineamientos), CREG, TI. Autorizan o condicionan datos y marco normativo; no viven el día a día del ranking, pero sin ellos el proyecto se detiene. | **Gestionar de cerca:** Dirección de Distribución / pérdidas, Área Comercial. Patrocinan metas, adoptan listas y definen el valor de negocio. Comunicación frecuente y decisión conjunta. |
| **Poder medio / bajo** | **Monitorear:** usuarios del servicio en general, SSPD (seguimiento institucional), GIS y protección de datos (controles puntuales). Información periódica y cumplimiento sin sobrecargar la agenda del piloto. | **Informar y mantener comprometidos:** cuadrillas / supervisores, CENSNNOVA, equipo del proyecto, usuarios priorizados, contratistas, autoridades locales. Usan o reciben el producto; se escucha su feedback y se gestiona el riesgo reputacional o de acceso. |

**Lectura operativa.** Distribución y Comercial se gestionan de cerca porque convierten el score en kWh recuperados. TI, EPM y CREG se mantienen satisfechos con acuerdos formales y reportes creíbles. Cuadrillas, CENSNNOVA y el equipo ejecutor se informan y comprometen para que el MPV se use. Los usuarios priorizados concentran el riesgo ético: se informan con claridad y el score no se usa como sanción automática.

## 4. Mínimo producto viable (MPV)

El MPV del proyecto es la interfaz **CENS · Prioriza Pérdidas**, publicada en GitHub Pages: [esilvas1.github.io/Planeacion_Estrategica/mvp/](https://esilvas1.github.io/Planeacion_Estrategica/mvp/). Simula un producto operable de priorización de pérdidas no técnicas con datos mock y un ranking geográfico sobre el área de influencia de CENS.

**Qué entrega el MPV.** Mapa de riesgo con puntos en municipios del área de servicio, lista priorizada de inspección en campo, lista de normalización comercial, ficha de detalle con señales SAC / GTECH / SCADA, asignación a cuadrilla dentro de un cupo semanal y panel de seguimiento (lift, equidad territorial y falsos positivos).

### 4.1 El MPV según las fases de CRISP-DM

| Fase CRISP-DM | Cómo se refleja en el MPV |
|---|---|
| **Entendimiento del negocio** | El producto responde a la decisión operativa de CENS: a quién visitar y en qué orden. Los KPI visibles (índice de pérdidas, energía recuperada, puntos prioritarios, cobertura de zonas restringidas) alinean la interfaz con las metas de eficiencia, efectividad y equidad, no con la complejidad del modelo. |
| **Entendimiento de los datos** | Cada punto priorizado expone señales de las tres fuentes del caso: SAC (consumo / facturación), GTECH (ubicación y red) y SCADA (eventos / medidas). El MPV deja explícito qué tipo de dato alimenta el score, aunque en esta versión sea simulado. |
| **Preparación de los datos** | Los registros mock ya aparecen cruzados por municipio / zona, con score, cupo semanal y estado de visita. Eso representa el resultado de limpieza, georreferenciación y cruce SAC–GIS–SCADA que en producción ocurriría en Azure. |
| **Modelado** | Un scoring de riesgo ordena los puntos (alto / medio / bajo) y genera las listas de campo y comercial. La precisión del algoritmo no es el foco del MPV: lo es la priorización accionable (Dubovikov, 2019). |
| **Evaluación** | El panel de seguimiento muestra lift frente a visita no priorizada, equidad territorial (zonas críticas retenidas en el ranking) y tasa estimada de falsos positivos, para juzgar si el producto aporta valor de negocio. |
| **Despliegue / distribución** | El MPV está publicado como aplicación web en GitHub Pages, usable por Distribución, Comercial y supervisores en demo. Incluye asignación a cuadrilla y registro de resultado de visita, es decir, el ciclo mínimo de uso operativo. |

En síntesis, el MPV no es solo un mapa: recorre el ciclo CRISP-DM hasta un entregable distribuible que convierte datos de pérdidas no técnicas en una lista de intervención medible para CENS.

## 5. Reunión de cierre del proyecto

Se asume que el MPV constituye la entrega final del proyecto. La reunión de cierre presenta resultados, valor generado, lecciones aprendidas y acuerdos de continuidad operativa del ranking y de las listas.

### 5.1 Mensaje general de la reunión de cierre

**Cerramos el proyecto con un producto usable: CENS ya puede priorizar visitas y gestiones comerciales con un ranking geográfico de riesgo. El valor no está en el algoritmo por sí solo, sino en recuperar más energía con el mismo cupo de cuadrillas, aportar al índice de pérdidas y mantener las zonas críticas en el seguimiento. El MPV queda en manos de Distribución, Comercial y TI para piloto operativo, con el score como apoyo a la decisión y no como sanción automática.**

### 5.2 Tipos de invitados y mensaje específico para cada uno

Asisten los mismos tipos de la reunión de inicio. El foco ya no es abrir el alcance ni negociar accesos, sino **validar resultados, ver la demo del MPV y acordar la continuidad operativa**.

| Tipo de invitado | Quiénes | Mensaje específico en el cierre |
|---|---|---|
| Patrocinio de negocio | Dirección de Distribución / pérdidas | *El MPV queda bajo su adopción: ustedes confirman si el ranking entra a piloto operativo y con qué meta de kWh/visita se da por exitoso el traspaso.* |
| Cliente operativo comercial | Área Comercial | *Reciben las listas de normalización y el protocolo de usuarios vulnerables. Su compromiso es operar el canal comercial con trazabilidad post-proyecto.* |
| Usuario de campo | Supervisores / cuadrillas | *A partir de ahora usan la lista priorizada y registran el resultado de cada visita. Ese feedback calibra falsos positivos y el cupo semanal.* |
| Habilitador técnico | TI | *El producto pasa a soporte de plataforma: acceso estable, respaldo del entorno y reglas de actualización del ranking.* |
| Continuidad innovadora | CENSNNOVA | *SafeGRID queda con dueño y backlog. El cierre del proyecto no cierra el servicio: abre la operación continua.* |
| Dueño de datos espaciales | GIS / GTECH | *Mantienen la actualización del inventario que alimenta el mapa de riesgo en el piloto.* |
| Cumplimiento | Protección de datos | *Auditan el uso del score y el tratamiento de datos personales en la operación diaria; el acta de cierre registra los controles vigentes.* |
| Habilitador de grupo | EPM / SCADA | *El acuerdo de lectura SCADA permanece activo para el piloto; cualquier ampliación se gestiona por el canal de grupo.* |
| Equipo ejecutor | Equipo núcleo del proyecto | *Entregan acta, repositorio del MPV, lecciones aprendidas y responsables de continuidad a Distribución, Comercial y TI.* |

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

### 5.5 Presentación del producto (video <= 5 minutos)

La presentación del MPV se realiza en un video de máximo 5 minutos, con énfasis en el **valor para CENS**: más energía recuperada por visita, aporte al índice de pérdidas y uso eficiente del cupo de cuadrillas. El guion cronometrado y la ficha de demo están en: [esilvas1.github.io/Planeacion_Estrategica/mvp/ficha_demo_5min.html](https://esilvas1.github.io/Planeacion_Estrategica/mvp/ficha_demo_5min.html). El video se entrega junto con este taller en la actividad del curso (grabación del equipo).

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

[7] Chapman, P., Clinton, J., Kerber, R., Khabaza, T., Reinartz, T., Shearer, C. y Wirth, R. (2000). *CRISP-DM 1.0: Step-by-step data mining guide*. SPSS Inc.

[8] República de Colombia. (2012). *Ley 1581 de 2012* (protección de datos personales). Disponible en: [https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=49981](https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=49981)

[9] Centrales Eléctricas del Norte de Santander S.A. E.S.P. (CENS). Sitio institucional. Disponible en: [https://www.cens.com.co/](https://www.cens.com.co/)

[10] Equipo del taller. *CENS · Prioriza Pérdidas* (MPV). GitHub Pages. Disponible en: [https://esilvas1.github.io/Planeacion_Estrategica/mvp/](https://esilvas1.github.io/Planeacion_Estrategica/mvp/)

[11] Equipo del taller. *Ficha de demo del MPV (<= 5 min)*. GitHub Pages. Disponible en: [https://esilvas1.github.io/Planeacion_Estrategica/mvp/ficha_demo_5min.html](https://esilvas1.github.io/Planeacion_Estrategica/mvp/ficha_demo_5min.html)

