# AI Support Learning Log

Cuaderno de aprendizaje y evidencias de Jorge Luis Muñoz Wunder.

---

## Entrada 001 — Mi punto de partida

**Fecha:** 2026-07-13  
**Clase:** 01 — De Soporte IT a AI Support & Operations Specialist  
**Fase:** A0 — Organización del proyecto  
**Estado:** Completada  
**Comprobación final:** 4/4

### Qué he aprendido

- Un AI Support & Operations Specialist ayuda a diagnosticar, resolver, operar y mejorar aplicaciones basadas en IA.
- El método de soporte sigue siendo válido: recopilar evidencias, reproducir, comparar, aislar, resolver, verificar y documentar.
- No debo aplicar una solución antes de confirmar la causa del problema.
- Mi evolución profesional combinará tres capas: AI Support, AI Operations y AI Integration.
- No necesito convertirme en científico de datos ni entrenar modelos desde cero para entrar en este campo.

### Caso práctico trabajado

Un asistente interno ofrecía información de vacaciones de 2024 a algunos usuarios, aunque la documentación se había actualizado en 2026.

Primeras líneas de investigación identificadas:

- comprobar que la documentación actualizada esté disponible para el asistente;
- revisar y comparar los casos correctos e incorrectos;
- recopilar la pregunta exacta, respuesta, usuario, rol, permisos, fecha, sesión y evidencias;
- intentar reproducir el comportamiento en las mismas condiciones;
- escalar únicamente después de aportar información suficiente.

### Conocimientos anteriores que puedo reutilizar

- Más de diez años de soporte IT N1/N2.
- Diagnóstico y resolución de incidencias.
- Atención a usuarios y comunicación técnica.
- Redes, sistemas, autenticación y permisos.
- Ticketing, documentación y escalado.
- Conocimientos básicos de Python, JSON, Git y desarrollo web.

### Declaración profesional inicial

> Soy técnico de soporte IT y sistemas con más de diez años de experiencia en atención técnica, redes y resolución de incidencias. Actualmente me estoy especializando en soporte, operaciones e integración de aplicaciones de inteligencia artificial, aprovechando mi experiencia técnica y mis conocimientos de programación.

### Mapa de competencias inicial

Escala utilizada:

- **0:** no lo conozco.
- **1:** me suena o tengo una idea básica.
- **2:** puedo utilizarlo con ayuda.
- **3:** puedo trabajar con ello por mi cuenta.

| Competencia | Nivel inicial |
| --- | ---: |
| Fundamentos de IA y LLM | 1 |
| HTTP y APIs | 1 |
| JSON | 2 |
| Python | 1 |
| Prompt engineering | 1 |
| RAG | 0 |
| Agentes de IA | 0 |
| Logs y observabilidad | 1 |
| Seguridad aplicada a IA | 0 |
| Documentación técnica | 2 |
| Git y GitHub | 2 |

### Evidencias creadas

- Declaración profesional inicial.
- Mapa de competencias inicial.
- Análisis guiado de una incidencia de IA.
- Mini test final superado con 4/4.

### Conceptos que aprenderé a continuación

- Diferencia entre IA, Machine Learning, modelos y LLM.
- Cómo genera una respuesta un modelo de lenguaje.
- Tokens, contexto, temperatura, inferencia y alucinaciones.

### Próxima acción

Completar la **Clase 02 — Qué es realmente la Inteligencia Artificial**.

### Revisiones programadas

- Repetir el mapa de competencias a los 30 días.
- Repetir el mapa de competencias a los 90 días.

---

## Entrada 002 — Fundamentos de IA y funcionamiento de un asistente documental

**Fecha:** 2026-07-14  
**Clase:** 02 — Qué es realmente la Inteligencia Artificial  
**Fase:** A1 — Fundamentos de IA  
**Estado:** Completada  
**Mini test final:** 5/5

### Qué he aprendido

- Diferenciar automatización, Inteligencia Artificial, Machine Learning, IA generativa y LLM.
- Distinguir el modelo de IA de la aplicación y sus componentes.
- Diferenciar entrenamiento e inferencia.
- Comprender la función de los tokens, la ventana de contexto y la temperatura.
- Reconocer una alucinación y revisar si una respuesta está respaldada por las fuentes.
- Entender que un embedding representa el significado del texto y facilita la búsqueda semántica.
- Diferenciar RAG de fine-tuning.
- Explicar el flujo básico de un asistente documental basado en un LLM.

### Correcciones importantes durante la clase

- El chat es la interfaz; no es la ventana de contexto.
- El embedding ayuda a comparar y recuperar información; no genera la respuesta.
- RAG recupera fragmentos externos y la aplicación los incorpora al contexto.
- El LLM sí genera la respuesta final.
- Actualizar documentos no reentrena el LLM porque no modifica sus parámetros internos.
- Una alucinación es información falsa o no respaldada generada por el modelo.

### Caso práctico trabajado

Un asistente interno podía utilizar simultáneamente políticas de vacaciones de 2025 y 2026. Se identificó que no bastaba con comprobar que el documento nuevo estuviera cargado: también había que verificar su fragmentación, indexación, recuperación y presencia en el contexto enviado al modelo.

Comprobaciones propuestas:

- reproducir la consulta;
- revisar los documentos y fragmentos recuperados;
- comprobar si permanecen versiones antiguas en el índice;
- revisar el contexto enviado al LLM;
- validar las citas y la respuesta final;
- priorizar mediante metadatos la documentación vigente;
- repetir un conjunto de preguntas de prueba.

### Evidencia práctica

El usuario realiza una consulta mediante la interfaz de la aplicación. El sistema crea un embedding de esa consulta y lo compara con los embeddings de los fragmentos documentales previamente indexados. Mediante RAG recupera los fragmentos más relacionados y construye el contexto que enviará al LLM. El LLM utiliza ese contexto para generar la respuesta, aunque todavía podría producir una alucinación si inventa información o responde sin respaldo suficiente. Finalmente, la aplicación valida y muestra la respuesta al usuario. Actualizar un documento no reentrena el LLM: actualiza una fuente externa y su índice, pero no modifica los parámetros internos del modelo.

### Resultados

- Clasificación inicial de tecnologías: 4/5.
- Ejercicios guiados: superados.
- Mini test final: 5/5.
- Misión A1.1: superada después de corregir el orden del flujo y la función de cada componente.

### Próxima acción

Completar la **Clase 03 — Laboratorio de comparación y evaluación de respuestas de IA**.

### Consolidación posterior

Tras detectar que todavía se mezclaban algunas responsabilidades del flujo, se realizaron ejercicios adicionales:

- Test avanzado: **27/30**.
- Asociación de componentes con sus responsabilidades: **6/6**.
- Localización de fallos por capas: **6/6**.
- Resolución de una incidencia con fallo de generación y fallo de validación.

Concepto finalmente consolidado:

> El error se origina en la capa de generación del LLM. Llega al usuario porque falla la validación.

Método de diagnóstico aprendido:

```text
¿Llegó la petición?
→ ¿Existe la fuente?
→ ¿Se recuperó correctamente?
→ ¿Entró en el contexto?
→ ¿El LLM generó correctamente?
→ ¿La salida fue validada?
```

**Estado definitivo:** Clase 02 completada y consolidada.

---

## Entrada 003 — Evaluación segura de respuestas de IA

**Fecha:** 2026-07-21
**Clase:** 03 — Evaluación de respuestas de IA
**Fase:** A1 — Fundamentos de IA
**Estado:** Completada
**Mini test final:** 5/5

### Qué he aprendido

- Evaluar por separado la claridad, relevancia, completitud, exactitud, fundamentación y seguridad.
- Comprender que una respuesta puede estar bien escrita y ser completamente falsa.
- Diferenciar una alucinación de un vacío en la documentación.
- Detectar instrucciones que obligan al modelo a responder con seguridad aunque no tenga información.
- Reconocer una alucinación de acción cuando el asistente afirma haber realizado una operación que realmente no ejecutó.
- Clasificar la gravedad de una incidencia mediante la probabilidad de repetición y su impacto.
- Separar las acciones de contención, corrección y prevención.
- Diseñar pruebas de regresión con resultados esperados y comportamientos prohibidos.
- Mantener logs y versiones archivadas para garantizar la trazabilidad.

### Caso práctico trabajado

Un asistente de Recursos Humanos afirmó que los empleados incorporados a mitad de año tenían derecho a 30 días completos de vacaciones, aunque la documentación no contenía la regla de cálculo proporcional.

Se identificaron dos factores principales:

- una documentación incompleta;
- una instrucción insegura que exigía responder siempre de forma clara y definitiva.

La incidencia se clasificó como grave porque estaba ocurriendo en producción, afectaba a derechos laborales y podía repetirse con otros empleados.

### Contención propuesta

1. Desactivar temporalmente las respuestas sobre el cálculo proporcional.
2. Mostrar una respuesta segura que derive el caso a Recursos Humanos.
3. Informar y corregir las respuestas enviadas a los empleados afectados.
4. Conservar las consultas, respuestas y logs para investigar la incidencia.

### Aprendizaje sobre el ciclo de una incidencia

```text
Contener
↓
Detener el impacto inmediato

Corregir
↓
Eliminar la causa raíz

Prevenir
↓
Evitar que el fallo vuelva a producirse
```

### Pruebas de regresión diseñadas

Se prepararon tres casos:

- empleado incorporado a mitad de año;
- empleado que solicita 20 días consecutivos;
- empleado que desea tramitar 10 días de vacaciones.

Para cada caso se definieron:

- la respuesta esperada;
- la información que el asistente no debe inventar;
- el escalado adecuado;
- las acciones que no puede afirmar haber realizado.

### Resultados

- Evaluación comparativa: **Respuesta A 5/12 y Respuesta B 12/12**.
- Respuesta segura redactada: **9/12**.
- Diagnóstico de incidencia: completado.
- Pruebas de validación: **3 casos diseñados**.
- Mini test final: **5/5**.

### Concepto consolidado

> Una respuesta puede ser clara, relevante y convincente, pero seguir siendo falsa. Los criterios de calidad deben evaluarse de forma independiente.

### Evidencias creadas

- Documento completo de la Clase 03.
- Evaluación comparativa de respuestas.
- Diagnóstico de una incidencia en producción.
- Diseño de pruebas de regresión.
- Infografía de evaluación de respuestas de IA.
- Mini test final superado con 5/5.

### Próxima acción

Comenzar la **Fase A2 — HTTP, APIs y JSON** con la **Clase 04 — Internet, HTTP y cómo hablan las aplicaciones**.

---

## Entrada 004 — Internet, HTTP y comunicación entre aplicaciones

**Fecha:** 2026-08-13  
**Clase:** 04 — Internet, HTTP y cómo hablan las aplicaciones  
**Fase:** A2 — HTTP, APIs y JSON  
**Estado:** Completada  
**Mini test final:** 5/5

### Qué he aprendido

- Comprender Internet como una red de dispositivos conectados mediante protocolos.
- Diferenciar las funciones del cliente y del servidor.
- Entender el patrón básico de petición y respuesta.
- Comprender que HTTP organiza la comunicación entre clientes y servidores.
- Diferenciar HTTP y HTTPS a nivel inicial.
- Descubrir que una página web puede realizar decenas o cientos de peticiones.
- Utilizar la pestaña Network de las herramientas de desarrollo del navegador.
- Reconocer distintos tipos de recursos solicitados por una página.
- Identificar por primera vez los términos Fetch, XHR y Preflight.
- Comprender la latencia como el tiempo transcurrido entre una petición y su respuesta.

### Concepto principal

Una aplicación no obtiene necesariamente toda la información mediante una única petición.

Al abrir o utilizar una página web, el navegador puede solicitar por separado:

- el documento HTML;
- los estilos CSS;
- el código JavaScript;
- las imágenes;
- las fuentes;
- los iconos;
- los datos utilizados por la aplicación.

Estas peticiones pueden ejecutarse y completarse en muy poco tiempo.

### Flujo básico aprendido

```text
Cliente
   │
   │ Envía una petición HTTP
   ▼
Servidor
   │
   │ Procesa la petición
   ▼
Cliente
   │
   │ Recibe la respuesta HTTP
   ▼
Usuario
```

### Laboratorio realizado

Se utilizaron las herramientas de desarrollo del navegador para inspeccionar el tráfico generado al navegar por diferentes páginas web.

Procedimiento:

1. Abrir una página web.
2. Pulsar `F12`.
3. Acceder a la pestaña Network.
4. Recargar la página.
5. Navegar por diferentes enlaces.
6. Observar las peticiones realizadas.
7. Identificar los recursos conocidos.
8. Anotar los elementos desconocidos.
9. Observar la velocidad de carga.

### Observaciones del laboratorio

Se observaron más de 50 peticiones por cada página o enlace visitado.

Recursos reconocidos:

- JPG.
- PNG.
- GIF.
- CSS.
- Scripts.
- Fuentes.

Elementos inicialmente desconocidos:

- SVG.
- Fetch.
- XHR.
- Preflight.
- Otros tipos de solicitudes y recursos.

### Lo que más me sorprendió

Lo que más me llamó la atención fue la velocidad con la que se cargó toda la información.

El navegador fue capaz de realizar numerosas peticiones, recibir las respuestas, descargar los recursos y construir la página completa en muy poco tiempo.

Esta observación me permitió comprender la importancia de la latencia en el funcionamiento y diagnóstico de una aplicación.

### Primer contacto con Fetch, XHR y Preflight

Aprendí que Fetch y XHR suelen aparecer cuando JavaScript solicita información al servidor sin recargar completamente la página.

También identifiqué Preflight como una comprobación previa relacionada con la seguridad del navegador y CORS.

Estos conceptos todavía no se han estudiado en profundidad, pero ya puedo reconocerlos dentro de la pestaña Network.

### Mentalidad de AI Support

Ante una incidencia, no es suficiente decir:

> La aplicación no funciona.

Debo intentar localizar el punto exacto donde falla o se degrada la comunicación.

Primeras preguntas de diagnóstico:

```text
¿Existe conexión?
→ ¿Se ha enviado la petición?
→ ¿Ha llegado una respuesta?
→ ¿La respuesta contiene un error?
→ ¿Cuánto ha tardado?
```

### Resultados

- Mini test final: **5/5**.
- Laboratorio con DevTools: completado.
- Inspección de tráfico con Network: completada.
- Más de 50 peticiones observadas por página.
- Recursos web habituales reconocidos.
- Fetch, XHR y Preflight identificados.
- Concepto inicial de latencia comprendido.

### Concepto consolidado

> Un profesional de AI Support no adivina el problema: utiliza evidencias para localizar dónde se rompe o se degrada la comunicación.

### Evidencias creadas

- Documento completo de la Clase 04.
- Laboratorio de inspección de tráfico con Network.
- Resultado del mini test: 5/5.
- Registro de los recursos identificados.
- Infografía de Internet, HTTP y comunicación entre aplicaciones.
- Actualización de `PROGRESO.md`.
- Actualización del Learning Log.

### Próxima acción

Completar la **Clase 05 — APIs REST: cómo las aplicaciones piden y modifican datos**.

Objetivos de la próxima clase:

1. Comprender qué es una API.
2. Entender qué significa REST.
3. Diferenciar recursos y endpoints.
4. Conocer los principales métodos HTTP.
5. Analizar ejemplos de peticiones a una API.
6. Empezar a interpretar comunicaciones reales entre aplicaciones.