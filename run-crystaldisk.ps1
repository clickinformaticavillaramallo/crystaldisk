# run-crystaldisk.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/crystaldisk/raw/main/CrystalInfoMark.exe"
$tmpExe = "$env:TEMP\CrystalInfoMark.exe"

Write-Host "[*] Descargando..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Write-Host "[*] Desbloqueando archivo..." -ForegroundColor Cyan
Unblock-File -Path $tmpExe

Write-Host "[*] Ejecutando..." -ForegroundColor Green
Start-Process $tmpExe -Wait
