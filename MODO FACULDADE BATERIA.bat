@echo off
:LOOP
setlocal enabledelayedexpansion

set "ARQUIVO=C:\MODO_FAC_CODE.txt"
set "LINHAS_BUSCADAS="
set contador=1

for /f "usebackq tokens=*" %%a in ("%ARQUIVO%") do (
    set "VARIAVEL[!contador!]=%%a"
    set /a contador+=1
)

for /f "tokens=2 delims==" %%G in ('wmic path Win32_Battery Get BatteryStatus /value ^| findstr /i "BatteryStatus"') do set "status=%%G"

if "%status%"=="1" (
    echo MODO: FACULDADE
	set "LINHAS_BUSCADAS=!VARIAVEL[2]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        taskkill /IM "!VARIAVEL[%%c]!" /F
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0

) else (
    echo MODO: RECUPERAR BASICO
    set "LINHAS_BUSCADAS=!VARIAVEL[3]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        !VARIAVEL[%%c]!
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0
)
