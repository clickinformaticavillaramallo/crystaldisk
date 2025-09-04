# run-crystaldisk.ps1
$exeUrl = 'https://github.com/clickinformaticavillaramallo/crystaldisk/raw/main/CrystalInfoMark.exe'
$tmpExe = "$env:TEMP\CrystalInfoMark.exe"

Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing
Start-Process $tmpExe -Wait
