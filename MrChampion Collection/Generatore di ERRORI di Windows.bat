@echo off
title Generatore di ERRORI di Windows
color 09
set /p ti=Titolo dell'ERRORE: 
set /p te=Testo dell'ERRORE: 
color A
cls
:buttons
echo Titolo dell'ERRORE: %ti%
echo Testo dell'ERRORE: %te%
echo.
echo Quali pulsanti?
echo.
echo -------------------------
echo 0 - OK
echo -------------------------
echo 1 - OK, Annulla
echo -------------------------
echo 2 - Annulla, Riprova, Ignora
echo -------------------------
echo 3 - Si, No, Annulla
echo -------------------------
echo 4 - Si, No
echo -------------------------
echo 5 - Riprova, Annulla
echo -------------------------
echo.
set /p b=Inserisci un numero: 
if "%b%" == "0" goto ft
if "%b%" == "1" goto ft
if "%b%" == "2" goto ft
if "%b%" == "3" goto ft
if "%b%" == "4" goto ft
if "%b%" == "5" goto ft
goto ne
:ft
cls
color 1
echo Titolo dell'ERRORE: %ti%
echo Testo dell'ERRORE: %te%
echo.
echo Quale tipo di messaggio?
echo.
echo -------------------------
echo 16 - ERRORE
echo -------------------------
echo 32 - Domanda
echo -------------------------
echo 48 - Attenzione
echo -------------------------
echo 64 - Informazione
echo -------------------------
echo.
set /p f=Inserisci un numero:
if "%f%" == "16" goto final
if "%f%" == "32" goto final
if "%f%" == "48" goto final
if "%f%" == "64" goto final
goto nee
:final
cls
color 3
echo X=MsgBox("%te%", %b%+%f%, "%ti%")>"%Userprofile%\Desktop\ERRORE.vbs"
exit
R U looking in the Code?
:ne
cls
echo Inserisci un numero valido
echo.
pause
cls
goto buttons
:nee
cls
echo Inserisci un numero valido
echo.
pause
cls
goto ft