@echo off
title Generatore di file .txt di Windows
color 09
set /p ti=Titolo del file:
set /p te=Testo nel file:
echo %te%>"%Userprofile%\Desktop\%ti%.txt"