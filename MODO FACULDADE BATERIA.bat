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
::Zh4grVQjdCyDJGyX8VAjFBZVQguSAES0A5EO4f7+08uKoEQYWvY6OIvemoCcIeIS5k3rSbsC8lUavuovOTd8XzaOLi0VnUtwn0XLMt+Z0w==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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
