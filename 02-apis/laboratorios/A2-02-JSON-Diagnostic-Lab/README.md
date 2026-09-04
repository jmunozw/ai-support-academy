# A2-02 — JSON Diagnostic Lab

## Objetivo

Aprender a leer, validar, transformar y diagnosticar documentos JSON mediante Windows PowerShell 5.1. Diferenciar una estructura sintácticamente válida de otra que además respeta el contrato y mantiene valores coherentes.

## Entorno

- Fecha: 04/09/2026
- Sistema: Windows 11
- Herramienta: Windows PowerShell 5.1
- Cmdlets: `ConvertFrom-Json` y `ConvertTo-Json`
- Formato de datos: JSON

## Estructura

```text
A2-02-JSON-Diagnostic-Lab/
├── README.md
├── datos/
│   ├── 01-dispositivo-valido.json
│   ├── 02-json-malformado.json
│   ├── 03-contrato-invalido.json
│   └── 04-respuesta-corregida.json
├── scripts/
│   └── Validar-Json.ps1
└── evidencias/
    ├── 01-conversion-y-navegacion.txt
    ├── 02-validacion-json-malformado.txt
    └── 03-modificacion-y-round-trip.txt
```

`02-json-malformado.json` contiene intencionalmente un error de sintaxis. No debe corregirse porque se utiliza como entrada negativa del laboratorio.

## Prueba 1 — Conversión y navegación

Archivo:

```text
datos/01-dispositivo-valido.json
```

Comandos desde la raíz del laboratorio:

```powershell
$response = Get-Content -Raw .\datos\01-dispositivo-valido.json | ConvertFrom-Json
$response.GetType().FullName
$response.device.device_id
$response.device.managed
$response.device.owner.name
$response.device.owner.department
$response.device.policies[1].status
$response.device.policies[1].errors[0]
$response.device.policies | Select-Object name, status
```

Resultados principales:

```text
Tipo raíz: System.Management.Automation.PSCustomObject
Dispositivo: LAP-027
Propietaria: Laura
Windows Update: failed
Error: 0x8024402C
```

## Prueba 2 — Propiedad nula frente a inexistente

Comandos:

```powershell
$response.device.owner.PSObject.Properties.Name -contains "department"
$response.PSObject.Properties.Name -contains "devide"
```

Resultados:

```text
True
False
```

Interpretación:

- `department` forma parte del objeto y tiene valor `$null`.
- `devide` no existe; fue una escritura incorrecta de `device`.
- Una salida vacía no permite distinguir por sí sola ambas situaciones.

## Prueba 3 — JSON malformado

Validación:

```powershell
.\scripts\Validar-Json.ps1 .\datos\02-json-malformado.json
```

Resultado esperado:

```text
JSON INVALIDO
```

Causa:

```text
Falta una coma entre device_id y managed.
```

También se comprobó directamente mediante `try/catch` y `ConvertFrom-Json -ErrorAction Stop`. La evidencia conserva el mensaje devuelto por PowerShell 5.1.

## Prueba 4 — Sintaxis válida y contrato incorrecto

Validación:

```powershell
.\scripts\Validar-Json.ps1 .\datos\03-contrato-invalido.json
```

Resultado esperado:

```text
JSON VALIDO
```

El resultado solo confirma la sintaxis. El documento sigue incumpliendo el contrato definido para la respuesta:

- `success` contiene un string en lugar de un booleano;
- `errors` contiene un objeto en lugar de un array;
- `retryable` contiene un string en lugar de un booleano;
- `data` contiene un array en lugar de un objeto o `null`;
- `status_code: 200` se contradice con `TOKEN_EXPIRED`.

Versión corregida:

```text
datos/04-respuesta-corregida.json
```

## Prueba 5 — Modificación y serialización

Comandos:

```powershell
$response.device.policies[1].status = "compliant"
$response.device.policies[1].errors = @()
$finalJson = $response | ConvertTo-Json -Depth 5 -Compress
$check = $finalJson | ConvertFrom-Json
$check.device.policies[1].status
```

Resultado observado:

```text
compliant
```

La prueba confirma este recorrido:

```text
JSON → PSCustomObject → modificación → JSON → PSCustomObject
```

## Validación rápida de todos los casos

Ejecutar desde la raíz del laboratorio:

```powershell
.\scripts\Validar-Json.ps1 .\datos\01-dispositivo-valido.json
.\scripts\Validar-Json.ps1 .\datos\02-json-malformado.json
.\scripts\Validar-Json.ps1 .\datos\03-contrato-invalido.json
.\scripts\Validar-Json.ps1 .\datos\04-respuesta-corregida.json
```

Secuencia esperada:

```text
JSON VALIDO
JSON INVALIDO
JSON VALIDO
JSON VALIDO
```

## Diagnóstico final

```text
La solicitud req-2001 ha fallado con el código 401 y el error TOKEN_EXPIRED.
El token de autenticación ha expirado, por lo que se debe renovar o iniciar
sesión nuevamente antes de repetir la petición.
```

## Conclusiones de soporte

1. Un JSON válido solo ha superado la comprobación sintáctica.
2. Debo comparar claves y tipos con el contrato documentado por la API.
3. También debo comprobar que los valores sean coherentes entre sí.
4. `null`, `[]`, `""` y una propiedad ausente representan estados diferentes.
5. Las rutas deben recorrerse respetando objetos, arrays e índices.
6. Una salida vacía en PowerShell puede proceder de `$null` o de una ruta incorrecta.
7. Un diagnóstico debe separar hechos observados, hipótesis y acciones siguientes.
