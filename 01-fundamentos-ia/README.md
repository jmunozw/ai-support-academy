# Fase A1 — Fundamentos de Inteligencia Artificial

Esta carpeta contiene las clases, laboratorios y evidencias de la Fase A1 de **AI Support Academy**.

El objetivo de esta fase no es entrenar modelos desde cero, sino adquirir el mapa mental necesario para comprender, utilizar y diagnosticar aplicaciones basadas en modelos de lenguaje.

---

## Estado actual

**Fase:** A1 — Fundamentos de IA  
**Estado:** en progreso  
**Última clase completada:** Clase 02 — Qué es realmente la Inteligencia Artificial  
**Siguiente actividad:** Clase 03 — Laboratorio de comparación y evaluación de respuestas de IA

---

## Estructura

```text
01-fundamentos-ia/
├── clases/
│   ├── Clase-01-De-Soporte-IT-a-AI-Support.md
│   └── Clase-02-Que-es-realmente-la-Inteligencia-Artificial.md
├── evidencias/
│   ├── Infografia-Clase-01-De-Soporte-IT-a-IA-Support.png
│   └── Infografia-Clase-02-Fundamentos-IA.png
├── laboratorios/
│   └── .gitkeep
└── README.md
```

---

## Conceptos introducidos

- automatización, Inteligencia Artificial y Machine Learning;
- IA generativa y modelos de lenguaje;
- diferencia entre modelo, proveedor y aplicación;
- entrenamiento e inferencia;
- tokens y ventana de contexto;
- temperatura;
- alucinaciones;
- embeddings;
- fragmentación e indexación;
- RAG;
- fine-tuning;
- construcción del contexto;
- generación y validación;
- diagnóstico por capas.

---

## Mapa operativo

```text
Usuario realiza una consulta
          ↓
La aplicación coordina
          ↓
El embedding representa el significado
          ↓
El recuperador localiza fragmentos
          ↓
La aplicación construye el contexto
          ↓
El LLM genera la respuesta
          ↓
La validación comprueba la salida
```

Resumen:

> Embedding representa → Recuperador localiza → Aplicación construye el contexto → LLM genera → Validador comprueba.

---

## Nivel esperado en esta fase

En este momento solamente es necesario:

1. distinguir la aplicación del LLM;
2. comprender que un LLM genera respuestas, pero no garantiza la verdad;
3. reconocer una alucinación;
4. comprender la función general de RAG;
5. saber que actualizar documentos no reentrena el modelo;
6. localizar un fallo sencillo dentro del flujo.

Los embeddings, la búsqueda vectorial, el contexto, RAG y la validación se profundizarán en fases posteriores.

---

## Resultados de la Clase 02

| Evaluación | Resultado |
|---|---:|
| Mini test final | 5/5 |
| Test avanzado | 27/30 |
| Responsabilidades de componentes | 6/6 |
| Localización de fallos | 6/6 |
| Caso final | Resuelto |

Concepto consolidado:

> El error se origina en la capa de generación del LLM. Llega al usuario porque falla la validación.

---

## Próxima actividad

La Clase 03 será un laboratorio práctico para:

- comparar respuestas;
- detectar alucinaciones;
- observar cómo influyen las instrucciones y el contexto;
- documentar evidencias reales;
- comenzar a evaluar una aplicación de IA como técnico de soporte.