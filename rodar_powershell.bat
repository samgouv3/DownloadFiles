@echo off
setlocal

set "PS_SCRIPT=C:\temp\criar_txt_powershell.ps1"

if not exist "%PS_SCRIPT%" (
    echo ERRO: Script nao encontrado em %PS_SCRIPT%
    pause
    exit /b 1
)

echo Executando script PowerShell com autorizacao...
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%"

if %errorlevel% neq 0 (
    echo ERRO ao executar o script PowerShell. Codigo: %errorlevel%
) else (
    echo Script executado com sucesso.
)

endlocal
pause