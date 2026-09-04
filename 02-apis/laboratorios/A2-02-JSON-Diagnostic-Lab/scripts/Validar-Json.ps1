[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Path
)

if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    Write-Error "File not found: $Path"
    exit 2
}

try {
    $content = Get-Content -LiteralPath $Path -Raw -ErrorAction Stop
    $parsed = $content | ConvertFrom-Json -ErrorAction Stop

    Write-Output "JSON VALIDO"
    Write-Output ("Archivo: {0}" -f (Resolve-Path -LiteralPath $Path).Path)

    if ($null -eq $parsed) {
        Write-Output "Tipo raiz: null"
    }
    else {
        Write-Output ("Tipo raiz: {0}" -f $parsed.GetType().FullName)
    }

    exit 0
}
catch {
    Write-Output "JSON INVALIDO"
    Write-Output ("Archivo: {0}" -f $Path)
    Write-Output ("Error: {0}" -f $_.Exception.Message)
    exit 1
}
