@echo off
title Generatore di file .bat di Windows
color 09
set /p ti=Titolo del file:
set /p te=Comando nel file:
echo %te%>"%Userprofile%\Desktop\%ti%.bat"