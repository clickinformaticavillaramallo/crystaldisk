# run-crystaldisk.ps1
$exeUrl = 'https://github.com/clickinformaticavillaramallo/crystaldisk/raw/main/CrystalDiskInfo.exe'
$tmpExe = "$env:TEMP\CrystalDiskInfo.exe"

Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing
Start-Process $tmpExe -Wait