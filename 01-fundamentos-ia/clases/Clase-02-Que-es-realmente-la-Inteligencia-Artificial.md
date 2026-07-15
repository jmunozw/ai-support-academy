# AI SUPPORT ACADEMY

## Clase 02 — Qué es realmente la Inteligencia Artificial

**Fase:** A1 — Fundamentos de IA  
**Fecha:** 2026-07-14  
**Modalidad:** teoría breve + análisis guiado + misión práctica  
**Estado:** Completada  
**Mini test final:** 5/5

---

## 1. Objetivos de la clase

Al terminar esta clase seré capaz de:

1. Diferenciar automatización, Inteligencia Artificial, Machine Learning, IA generativa y LLM.
2. Distinguir un modelo de IA de la aplicación que lo utiliza.
3. Explicar entrenamiento, inferencia, tokens, ventana de contexto y temperatura.
4. Reconocer una alucinación y proponer comprobaciones básicas.
5. Explicar la función de los embeddings y diferenciar RAG de fine-tuning.
6. Describir el flujo básico de un asistente documental basado en un LLM.

---

## 2. Mapa básico de conceptos

| Concepto | Definición práctica | Ejemplo |
| --- | --- | --- |
| Automatización | Ejecuta reglas programadas previamente. | Asignar a N2 los tickets marcados como críticos. |
| Inteligencia Artificial | Campo general que crea sistemas capaces de realizar tareas asociadas a la inteligencia humana. | Reconocimiento de imágenes o lenguaje. |
| Machine Learning | Aprende patrones a partir de datos. | Detección de spam basada en correos anteriores. |
| IA generativa | Produce contenido nuevo. | Generación de texto, imágenes, audio o código. |
| LLM | Modelo de lenguaje entrenado con grandes cantidades de texto. | Resumir una incidencia o redactar una respuesta. |

Relación simplificada:

```text
Inteligencia Artificial
└── Machine Learning
    └── IA generativa
        └── Modelos de lenguaje (LLM)
```

No todo sistema automatizado utiliza IA y no toda aplicación de IA es un chatbot.

---

## 3. Modelo frente a aplicación

El **modelo** es el motor que procesa la entrada y genera una salida. La **aplicación** incorpora ese modelo junto con otros componentes:

- interfaz;
- autenticación y permisos;
- instrucciones o system prompt;
- historial;
- documentación externa;
- herramientas;
- validaciones;
- logs y métricas.

Por tanto, una respuesta incorrecta no demuestra por sí sola que el modelo esté averiado. El fallo puede encontrarse en cualquiera de estas capas.

### Entrenamiento e inferencia

- **Entrenamiento:** proceso mediante el cual el modelo ajusta sus parámetros y aprende patrones a partir de grandes cantidades de datos.
- **Inferencia:** uso de un modelo ya entrenado para procesar una petición y generar una respuesta.

Actualizar un documento externo no modifica los parámetros internos del modelo y, por ello, no constituye un reentrenamiento.

---

## 4. Tokens, contexto y temperatura

### Tokens

Son las unidades en las que el modelo divide y procesa el texto. Influyen en la capacidad utilizada, la latencia, el coste y los límites de una petición.

### Ventana de contexto

Es la cantidad máxima de tokens que el modelo puede procesar en una petición. Puede incluir:

```text
Instrucciones
+ pregunta del usuario
+ historial
+ documentos recuperados
+ resultados de herramientas
+ respuesta generada
```

El chat es la interfaz; la ventana de contexto es la capacidad temporal disponible para procesar información.

### Temperatura

Controla aproximadamente la variabilidad de la generación:

- temperatura baja: mayor consistencia y previsibilidad;
- temperatura alta: mayor variedad y creatividad.

Una temperatura baja no garantiza que la respuesta sea verdadera ni elimina las alucinaciones.

---

## 5. Alucinaciones

Una **alucinación** es una respuesta generada que contiene información falsa, inventada o no respaldada por las fuentes disponibles.

Puede aparecer por falta de información, documentación contradictoria, preguntas ambiguas, instrucciones deficientes o por la propia naturaleza probabilística del modelo.

Controles básicos:

- utilizar fuentes vigentes;
- exigir citas verificables;
- permitir que el asistente reconozca que no tiene información suficiente;
- validar respuestas importantes;
- revisar los fragmentos recuperados y el contexto enviado;
- probar el sistema con preguntas y respuestas esperadas;
- escalar casos dudosos a una persona.

---

## 6. Embeddings, RAG y fine-tuning

### Embeddings

Un embedding es una representación numérica del significado de un texto. Permite comparar una consulta con fragmentos documentales y localizar contenido semánticamente relacionado, aunque no utilice exactamente las mismas palabras.

El embedding ayuda a recuperar información; no genera la respuesta final.

### RAG

RAG recupera información externa durante la consulta y la proporciona al LLM como contexto. Es apropiado para documentación cambiante que debe poder actualizarse y citarse.

### Fine-tuning

El fine-tuning ajusta el comportamiento de un modelo mediante numerosos ejemplos. Puede utilizarse para patrones o tareas estables, pero no suele ser la primera opción para introducir políticas empresariales que cambian con frecuencia.

| Método | Función principal |
| --- | --- |
| Prompt | Dar instrucciones durante una petición. |
| RAG | Aportar información externa y actualizable. |
| Fine-tuning | Especializar el comportamiento mediante ejemplos. |

---

## 7. Flujo de un asistente documental

```text
1. El usuario realiza una consulta mediante la interfaz.
2. La aplicación crea el embedding de la consulta.
3. El sistema compara ese embedding con los embeddings de los fragmentos indexados.
4. RAG recupera los fragmentos más relevantes.
5. La aplicación construye el contexto con instrucciones, consulta, historial útil y fragmentos.
6. El LLM procesa ese contexto y genera la respuesta.
7. La aplicación valida y muestra el resultado al usuario.
```

Actualizar un documento cambia una fuente externa. Después de fragmentarlo e indexarlo, el nuevo contenido puede recuperarse y enviarse al LLM como contexto, pero los parámetros internos del modelo no cambian.

---

## 8. Diagnóstico inicial como AI Support

Ante una respuesta incorrecta conviene recopilar:

- aplicación afectada;
- proveedor, modelo y configuración;
- pregunta exacta;
- documentos y fragmentos recuperados;
- contexto enviado al modelo;
- respuesta o error;
- fecha, hora y usuario afectado;
- latencia, tokens y logs disponibles.

En un asistente que mezcla políticas de 2025 y 2026 se debería comprobar si ambas versiones continúan indexadas, si se recuperaron fragmentos contradictorios y si la aplicación prioriza el documento vigente.

---

## 9. Misión A1.1 — Evidencia final

### Explicación técnica corregida

El usuario realiza una consulta mediante la interfaz de la aplicación. El sistema crea un embedding de esa consulta y lo compara con los embeddings de los fragmentos documentales previamente indexados. Mediante RAG recupera los fragmentos más relacionados y construye el contexto que enviará al LLM. El LLM utiliza ese contexto para generar la respuesta, aunque todavía podría producir una alucinación si inventa información o responde sin respaldo suficiente. Finalmente, la aplicación valida y muestra la respuesta al usuario. Actualizar un documento no reentrena el LLM: actualiza una fuente externa y su índice, pero no modifica los parámetros internos del modelo.

### Resultado

- Clasificación inicial de tecnologías: 4/5.
- Ejercicios guiados sobre RAG, contexto, temperatura y alucinaciones: superados.
- Mini test final: 5/5.
- Explicación del flujo RAG: corregida y comprendida.

---

## 10. Próxima acción

Completar la **Clase 03 — Laboratorio de comparación y evaluación de respuestas de IA**.

---

## 11. Consolidación final

Después de completar la clase se realizó una evaluación adicional para asegurar la comprensión real del flujo y no limitarse a memorizar definiciones.

### Resultados

- Test avanzado de fundamentos y diagnóstico: **27/30**.
- Asociación entre componentes y responsabilidades: **6/6**.
- Localización de fallos por capas: **6/6**.
- Caso final con fallo doble: resuelto después de diferenciar origen y control.

### Distinción consolidada

En el caso analizado, el contexto contenía correctamente “22 días”, pero el LLM generó “30 días” y la aplicación publicó la respuesta.

> El error se origina en la capa de generación del LLM. Llega al usuario porque falla la validación.

La generación es la capa en la que nace la alucinación. La validación es el control que debería detectar, bloquear o escalar una respuesta no respaldada.

### Método de diagnóstico aprendido

```text
¿La petición llegó?
→ ¿La fuente existe y está indexada?
→ ¿Se recuperó el fragmento correcto?
→ ¿Entró realmente en el contexto?
→ ¿El LLM generó una respuesta respaldada?
→ ¿La salida fue validada antes de publicarse?
```

**Estado definitivo de la Clase 02:** completada y consolidada.