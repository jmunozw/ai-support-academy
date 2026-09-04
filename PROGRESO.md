# Progreso — AI Support Academy

**Inicio:** 13 de julio de 2026  
**Objetivo profesional:** AI Support & Operations Specialist  
**Estado general:** En formación  
**Fase actual:** A2 — HTTP, APIs y JSON
**Última actualización:** 4 de septiembre de 2026

---

## Progreso por fases

| Fase | Contenido | Estado | Progreso |
|---|---|---:|---:|
| A0 | Organización del proyecto | Completada | 100% |
| A1 | Fundamentos de IA | Completada | 100% |
| A2 | HTTP, APIs y JSON | En progreso | Clases 04, 05 y 06 completadas — 60% |
| A3 | Python para AI Support | Pendiente | 0% |
| A4 | Prompt Engineering operativo | Pendiente | 0% |
| A5 | LLM Operations | Pendiente | 0% |
| A6 | RAG | Pendiente | 0% |
| A7 | Agentes de IA | Pendiente | 0% |
| A8 | Observabilidad | Pendiente | 0% |
| A9 | Seguridad aplicada a IA | Pendiente | 0% |
| A10 | Portfolio profesional | Continuo | En construcción |

---

## Fase A0 — Organización del proyecto

**Estado:** completada ✅

### Lista de comprobación

- [x] Nombre e identidad del proyecto definidos
- [x] Perfil profesional objetivo definido
- [x] Ruta profesional creada
- [x] Repositorio local inicializado con Git
- [x] Estructura principal de carpetas creada
- [x] `README.md` preparado
- [x] `.gitignore` configurado
- [x] Rutina semanal definida
- [x] Roadmap incorporado al repositorio
- [x] Learning Log incorporado
- [x] Plantillas documentales preparadas
- [x] Primer commit realizado
- [x] Repositorio publicado en GitHub

---

## Fase A1 — Fundamentos de IA

**Estado:** completada ✅

### Clases completadas

- [x] Clase 01 — De Soporte IT a AI Support
- [x] Clase 02 — Qué es realmente la Inteligencia Artificial
- [x] Clase 03 — Evaluación de respuestas de IA

### Clase 01 — De Soporte IT a AI Support

**Estado:** completada.

Competencias trabajadas:

- comprensión del perfil de AI Support;
- relación entre la experiencia en Soporte IT y los sistemas de IA;
- identificación de responsabilidades operativas;
- diferenciación entre el uso de una IA y el soporte de una aplicación de IA;
- definición de la ruta profesional del proyecto.

Resultado:

- ejercicio final completado: **4/4**;
- infografía de la clase creada;
- primera evidencia formativa incorporada al repositorio.

### Clase 02 — Qué es realmente la Inteligencia Artificial

**Estado:** completada y consolidada.

Conceptos introducidos:

- automatización, IA, Machine Learning, IA generativa y LLM;
- diferencia entre modelo y aplicación;
- entrenamiento e inferencia;
- tokens, ventana de contexto y temperatura;
- embeddings, fragmentos e indexación;
- RAG y fine-tuning;
- contexto, generación y validación;
- alucinaciones y diagnóstico por capas.

Resultados de consolidación:

- mini test final: **5/5**;
- test avanzado: **27/30**;
- asociación de componentes y responsabilidades: **6/6**;
- localización de fallos por capas: **6/6**;
- caso final de generación y validación: resuelto.

Idea operativa consolidada:

> El error se origina en la capa de generación del LLM. Llega al usuario porque falla la validación.

### Clase 03 — Evaluación de respuestas de IA

**Estado:** completada.

Competencias trabajadas:

- evaluación independiente de claridad, relevancia, completitud, exactitud, fundamentación y seguridad;
- diferenciación entre vacío documental y alucinación;
- detección de instrucciones inseguras;
- reconocimiento de alucinaciones informativas y de acción;
- clasificación de incidencias según probabilidad e impacto;
- separación entre contención, corrección y prevención;
- diseño de respuestas seguras;
- creación de pruebas de regresión;
- conservación de logs y versiones para garantizar la trazabilidad.

Resultados:

- evaluación comparativa: **Respuesta A 5/12 y Respuesta B 12/12**;
- respuesta segura redactada: **9/12**;
- incidencia de producción diagnosticada;
- tres pruebas de validación diseñadas;
- mini test final: **5/5**.

Idea operativa consolidada:

> Una respuesta puede ser clara y relevante, pero seguir siendo falsa. Cada criterio debe evaluarse de forma independiente.

---

## Fase A2 — HTTP, APIs y JSON

**Estado:** en progreso 🚧  
**Progreso:** 3 de 5 clases completadas — laboratorios A2-01 y A2-02 completados

### Plan de clases

- [x] Clase 04 — Internet, HTTP y cómo hablan las aplicaciones
- [x] Clase 05 — APIs REST: anatomía de peticiones y respuestas HTTP
- [x] Clase 06 — JSON: estructura, tipos de datos y validación
- [ ] Clase 07 — Postman y diagnóstico de peticiones
- [ ] Clase 08 — Diagnóstico integral de APIs

### Clase 04 — Internet, HTTP y cómo hablan las aplicaciones

**Estado:** completada ✅

Conceptos trabajados:

- funcionamiento general de Internet;
- protocolos de comunicación;
- relación entre cliente y servidor;
- patrón petición–respuesta;
- función básica de HTTP;
- diferencia inicial entre HTTP y HTTPS;
- recursos cargados por una página web;
- uso de la pestaña Network del navegador;
- primer contacto con SVG, Fetch, XHR y Preflight;
- concepto inicial de latencia;
- diagnóstico de la comunicación mediante evidencias.

### Resultados de la Clase 04

- test de conocimientos: **5/5**;
- laboratorio con DevTools y Network: completado;
- más de 50 peticiones observadas por página;
- recursos JPG, PNG, GIF, CSS, scripts y fuentes reconocidos;
- SVG, Fetch, XHR y Preflight identificados;
- latencia reconocida como el tiempo entre petición y respuesta;
- infografía de la clase creada;
- documentación incorporada al repositorio.

### Observación principal

> Una página web no se obtiene mediante una única petición. El navegador realiza decenas o cientos de solicitudes para descargar datos, imágenes, estilos, scripts y otros recursos.

### Idea operativa consolidada

> Un profesional de AI Support no adivina el problema: analiza dónde se rompe o se degrada la comunicación.

---

### Laboratorio A2-01 — API Diagnostic Lab

**Estado:** completado ✅
**Fecha:** 18–20 de agosto de 2026
**Commit:** `25a0235`

Peticiones documentadas:

- `GET /posts/1` → `200 OK`;
- `GET /ruta-inexistente` → `404 Not Found`;
- `POST /posts` con JSON malformado → `500 Internal Server Error`;
- `POST /posts` con JSON corregido → `201 Created`, identificador `101`.

Evidencias incorporadas:

- README del laboratorio;
- cuatro registros técnicos de petición y respuesta;
- cuerpo JSON utilizado para la petición `POST`;
- documentación guardada en UTF-8;
- resultados publicados en GitHub.

Aprendizaje principal:

> Una incidencia de API debe documentarse con método, endpoint, código, cabeceras, cuerpo, tiempo y resultado observado.

### Clase 05 — APIs REST: anatomía de peticiones y respuestas HTTP

**Estado:** completada ✅

Conceptos trabajados:

- diferencia entre API y REST;
- recursos, identificadores y endpoints;
- anatomía de peticiones y respuestas HTTP;
- métodos `GET`, `POST`, `PUT` y `DELETE`;
- familias `2xx`, `3xx`, `4xx` y `5xx`;
- códigos `200`, `201`, `400`, `401`, `403`, `404`, `429` y `500`;
- cabeceras `Accept` y `Content-Type`;
- objetos `{}`, arrays `[]` y colecciones filtradas;
- parámetros de consulta;
- persistencia y comportamiento de una API simulada;
- DNS, conexión TCP, SSL/TLS, TTFB, descarga y tiempo total.

Resultados:

- `GET /posts/1` analizado con `200 OK` y respuesta JSON;
- recurso individual inexistente diferenciado de una colección vacía;
- conexión reutilizada identificada mediante la ausencia de nuevas fases DNS/TCP/SSL;
- evaluación inicial: **4/5**;
- pregunta de recuperación: correcta;
- comprobación final de API frente a REST: superada;
- documento completo e infografía técnica creados.

Mediciones registradas:

- primera petición: `98,24 ms` totales y `25,76 ms` de TTFB;
- segunda petición: `94,10 ms` totales y `32,45 ms` de TTFB;
- colección filtrada con conexión reutilizada: `30,58 ms` totales, `24,04 ms` de TTFB y `4,16 ms` de descarga.

Ideas operativas consolidadas:

> La API permite la comunicación; REST propone cómo organizarla.

> Un `404` demuestra que el servidor ha respondido, pero no ha encontrado la ruta o el recurso solicitado.

> Que el tiempo total disminuya no significa necesariamente que también haya disminuido el TTFB.

---

### Laboratorio A2-02 — JSON Diagnostic Lab

**Estado:** completado ✅
**Fecha:** 4 de septiembre de 2026
**Entorno:** Windows PowerShell 5.1

Pruebas realizadas:

- conversión de una respuesta JSON a `PSCustomObject` mediante `ConvertFrom-Json`;
- acceso a objetos, arrays y valores anidados;
- comprobación de una propiedad presente con valor `$null` frente a una propiedad inexistente;
- captura de un JSON malformado mediante `try/catch` y `-ErrorAction Stop`;
- modificación de un objeto convertido;
- serialización mediante `ConvertTo-Json -Depth 5`;
- comprobación de ida y vuelta entre JSON y PowerShell.

Resultado final verificado:

```text
JSON → PSCustomObject → modificación → JSON → PSCustomObject
Estado recuperado: compliant
```

Aprendizaje principal:

> Que un JSON pueda convertirse no garantiza que respete el contrato de la API ni que sus valores sean coherentes entre sí.

---

### Clase 06 — JSON: estructura, tipos de datos y validación

**Estado:** completada ✅
**Evaluación:** superada tras recuperación guiada

Conceptos trabajados:

- estructura de un documento JSON;
- claves, valores y parejas clave–valor;
- tipos `string`, `number`, `boolean`, `null`, `object` y `array`;
- objetos y arrays anidados;
- acceso conceptual mediante rutas como `device.policies[1].errors[0]`;
- diferencia entre `null`, un array vacío `[]` y una propiedad inexistente;
- reglas de comillas, comas, llaves, corchetes y literales;
- JSON válido frente a JSON malformado;
- sintaxis, contrato de datos y coherencia lógica;
- conversión con `ConvertFrom-Json` y `ConvertTo-Json`;
- importancia de `-Depth 5` al serializar estructuras anidadas;
- diagnóstico basado en evidencias sin convertir una hipótesis en causa confirmada.

Resultados:

- primera lectura de tipos y rutas: **4/5**, con corrección de `errors[0].code`;
- JSON malformado corregido correctamente;
- clasificación inicial de ejemplos: **3/4**, con recuperación de la regla de claves entre comillas dobles;
- laboratorio PowerShell completado sin errores;
- propiedad nula y propiedad inexistente diferenciadas mediante `PSObject.Properties.Name`;
- error de análisis capturado en un JSON sin la coma obligatoria;
- estado de Windows Update modificado de `failed` a `compliant`;
- conversión de ida y vuelta confirmada con resultado `compliant`;
- validación de tipos y coherencia consolidada mediante recuperación guiada;
- diagnóstico final del caso `401 TOKEN_EXPIRED` redactado correctamente.

Ideas operativas consolidadas:

> Las comillas cambian el tipo: `false` es un booleano, pero `"false"` es una cadena.

> Un documento puede ser JSON válido y, aun así, incumplir el contrato de la API.

> Un campo presente con `null`, una colección vacía `[]` y una propiedad inexistente representan situaciones diferentes.

---

## Rutina semanal oficial

Trabajaré en la academia tres días por semana:

| Día | Horario | Orientación |
|---|---|---|
| Lunes | 11:00–13:00 | Conceptos nuevos y práctica guiada |
| Miércoles | 11:00–13:00 | Laboratorio y resolución de incidencias |
| Viernes | 11:00–13:00 | Proyecto, documentación y revisión |

El horario de 13:00 a 14:00 queda como margen disponible para otras formaciones, búsqueda de empleo o tareas pendientes.

### Estructura de cada sesión

| Bloque | Duración | Actividad |
|---|---:|---|
| Mente de soporte | 20 min | Comprender conceptos y relacionarlos con Soporte IT |
| Laboratorio real | 60 min | Probar herramientas, código o configuraciones |
| Tickets | 20 min | Diagnosticar una incidencia o caso práctico |
| Actualización | 20 min | Documentar resultados y actualizar GitHub |

**Duración total:** 2 horas.

---

## Criterio para considerar una sesión completada

Una sesión estará completada cuando exista al menos una evidencia:

- nota técnica;
- ejercicio resuelto;
- laboratorio documentado;
- ticket diagnosticado;
- código funcional;
- captura o resultado verificable;
- actualización del Learning Log;
- commit en Git.

No será necesario producir todas las evidencias en cada sesión.

---

## Evidencias actuales

| Fecha | Fase | Evidencia | Estado o resultado |
|---|---|---|---|
| 13/07/2026 | A0 | Estructura y publicación del repositorio | Completada |
| 13/07/2026 | A0 | Declaración profesional inicial | Completada |
| 13/07/2026 | A0 | Mapa inicial de competencias | Completado |
| 13/07/2026 | A1 | Clase 01 — De Soporte IT a AI Support | 4/4 |
| 14/07/2026 | A1 | Clase 02 — Fundamentos de IA | Completada |
| 14/07/2026 | A1 | Mini test final de la Clase 02 | 5/5 |
| 15/07/2026 | A1 | Test avanzado de consolidación | 27/30 |
| 15/07/2026 | A1 | Componentes y localización de fallos | 6/6 + 6/6 |
| 15/07/2026 | A1 | Infografía de fundamentos de IA | Completada |
| 21/07/2026 | A1 | Clase 03 — Evaluación de respuestas de IA | Completada |
| 21/07/2026 | A1 | Evaluación comparativa de respuestas | 5/12 y 12/12 |
| 21/07/2026 | A1 | Diagnóstico y contención de una incidencia | Completado |
| 21/07/2026 | A1 | Pruebas de regresión | 3 casos diseñados |
| 21/07/2026 | A1 | Mini test final de la Clase 03 | 5/5 |
| 21/07/2026 | A1 | Infografía de evaluación de respuestas de IA | Completada |
| 13/08/2026 | A2 | Clase 04 — Internet, HTTP y comunicación entre aplicaciones | Completada |
| 13/08/2026 | A2 | Test de conocimientos de la Clase 04 | 5/5 |
| 13/08/2026 | A2 | Laboratorio con DevTools y Network | Completado |
| 13/08/2026 | A2 | Inspección de más de 50 peticiones por página | Completada |
| 13/08/2026 | A2 | Infografía de Internet y HTTP | Completada |
| 18–20/08/2026 | A2 | Laboratorio A2-01 — API Diagnostic Lab | Completado |
| 18–20/08/2026 | A2 | GET 200, GET 404, POST 500 y POST 201 | Documentados |
| 20/08/2026 | A2 | README y evidencias del laboratorio | Commit `25a0235` |
| 26/08/2026 | A2 | Clase 05 — APIs REST y anatomía HTTP | Completada |
| 26/08/2026 | A2 | Evaluación final de la Clase 05 | 4/5 + recuperación correcta |
| 26/08/2026 | A2 | Análisis de cabeceras y tiempos HTTP | Completado |
| 26/08/2026 | A2 | Infografía de APIs REST y HTTP | Completada |
| 04/09/2026 | A2 | Clase 06 — JSON: estructura, tipos de datos y validación | Completada con recuperación guiada |
| 04/09/2026 | A2 | Laboratorio A2-02 — JSON Diagnostic Lab | Completado en PowerShell 5.1 |
| 04/09/2026 | A2 | Validación de JSON malformado con `try/catch` | Completada |
| 04/09/2026 | A2 | Conversión JSON–PowerShell–JSON | Resultado final `compliant` |
| 04/09/2026 | A2 | Infografía de estructura y validación JSON | Completada |

---

## Revisión semanal

Cada viernes responderé:

1. ¿Qué aprendí esta semana?
2. ¿Qué probé personalmente?
3. ¿Qué problema fui capaz de diagnosticar?
4. ¿Qué evidencia añadí al repositorio?
5. ¿Qué necesito reforzar?
6. ¿Cuál es la siguiente acción concreta?

---

## Próxima acción

Completar la **Clase 07 — Postman y diagnóstico de peticiones**:

1. instalar o comprobar Postman;
2. crear una colección de peticiones reproducibles;
3. configurar métodos, endpoints, cabeceras y cuerpos JSON;
4. utilizar variables para evitar repetir valores;
5. interpretar códigos, cuerpos y tiempos;
6. provocar y documentar errores de autenticación, ruta y límite de peticiones.
