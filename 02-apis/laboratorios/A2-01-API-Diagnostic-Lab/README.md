# A2-01 — API Diagnostic Lab

## Objetivo

Aprender a diferenciar la conectividad con un servidor del acceso y modificación de sus recursos. Utilizar curl.exe para probar una API directamente e interpretar el código HTTP, el contenido devuelto y los errores detectados.

## Entorno

- Periodo: 18–20/08/2026
- Herramienta: PowerShell y `curl.exe`
- API de pruebas: JSONPlaceholder
- Formato de datos: JSON

## Prueba 1 — Consulta correcta

- Método: `GET`
- Endpoint: `/posts/1`
- Resultado: `200 OK`
- Interpretación: La respuesta confirma que existe conectividad con el servidor, que el endpoint /posts/1 es accesible y que devuelve correctamente el recurso solicitado en formato JSON.
- Evidencia: `01-GET-post-1-200.txt`

## Prueba 2 — Ruta inexistente

- Método: `GET`
- Endpoint: `/ruta-inexistente`
- Resultado: `404 Not Found`
- Interpretación: El servidor respondió con un código HTTP, por lo que había conectividad. El error 404 indica que la ruta o recurso solicitado no fue encontrado.
- Evidencia: `02-GET-ruta-inexistente-404.txt`

## Prueba 3 — JSON malformado

- Método: `POST`
- Endpoint: `/posts`
- Resultado: `500 Internal Server Error`
- Síntoma: `Unexpected token t in JSON at position 1`
- Causa: Al pasar el JSON directamente desde PowerShell a curl.exe, las comillas fueron alteradas o eliminadas. El servidor recibió un cuerpo que no era JSON válido y falló al interpretarlo.
- Evidencia: `03-POST-post-500-json-malformado.txt`

## Prueba 4 — Creación correcta

- Método: `POST`
- Endpoint: `/posts`
- Resultado: `201 Created`
- Interpretación: Se guardó el JSON en un archivo y curl.exe lo envió conservando correctamente las comillas. La API aceptó la petición y simuló la creación del recurso. El valor 101 es el identificador asignado al nuevo recurso.
- Evidencia: `04-POST-post-201-reintento-correcto.txt`

## Conclusiones de soporte

1. Diferenciar entre tener conectividad con el servidor y poder acceder a un recurso concreto.
2. GET se utiliza para consultar información; POST para enviar datos y, habitualmente, crear recursos.
3. No basta con mirar el código HTTP: hay que revisar el cuerpo de la respuesta y el formato enviado para localizar la causa real del error.