::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBZVQguSAES0A5EO4f7+08uKoEQYWvY6OIvemoCcIeIS5k3rSZUh03tU1c4CCQlfZ1+pbxsgrHxb+22GOMnSugzuKg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZVQguSAES0A5EO4f7+08uKoEQYWvY6OIvemoCcIeIS5k3rSbsC8lUav+ohKVt3TjGKQUExsWsi
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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

echo MODO GAME = [f]-(SIM FULL) ou [l]-(SIM LITE) ou [n]-(NAO) ou [r]-(RECUPERAR BASICO):
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
    echo MODO: RECUPERAR BASICO
    set "LINHAS_BUSCADAS=!VARIAVEL[4]!"
    echo Linhas buscadas: !LINHAS_BUSCADAS!
    echo.

    for %%c in (!LINHAS_BUSCADAS!) do (
        !VARIAVEL[%%c]!
        echo.
    )

    timeout /t 3 /nobreak
    exit /b 0

) else if "%escolha%"=="n" (
    echo A Terminar Programa...
    timeout /t 3 /nobreak
	exit /b 0

) else (
    echo.
    echo Escolha invalida. Por favor, tente novamente.
    echo.
    goto LOOP
    
)
