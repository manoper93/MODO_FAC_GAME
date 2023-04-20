@echo off
:LOOP
setlocal enabledelayedexpansion

set "ARQUIVO=C:\MODO_GAME_CODE.txt"
set "LINHAS_BUSCADAS="
set contador=1

for /f "usebackq tokens=*" %%a in ("%ARQUIVO%") do (
    set "VARIAVEL[!contador!]=%%a"
    set /a contador+=1
)

echo MODO GAME = [f]-(FULL) ou [l]-(LITE) ou [t]-(TERMINAR) ou [r]-(RECUPERAR):
set /p escolha=

if "%escolha%"=="f" (
    echo MODO: FULL
    set "LINHAS_BUSCADAS=!VARIAVEL[2]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        taskkill /IM "!VARIAVEL[%%c]!" /F
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0

) else if "%escolha%"=="l" (
    echo MODO: LITE
    set "LINHAS_BUSCADAS=!VARIAVEL[3]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        taskkill /IM "!VARIAVEL[%%c]!" /F
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0

) else if "%escolha%"=="r" (
    echo MODO: RECUPERAR
    set "LINHAS_BUSCADAS=!VARIAVEL[4]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        !VARIAVEL[%%c]!
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0

) else if "%escolha%"=="t" (
    echo A Terminar Programa...
    timeout /t 3 /nobreak
	exit /b 0

) else (
    echo.
    echo Escolha invalida. Por favor, tente novamente.
    echo.
    goto LOOP
    
)
