@echo off
setlocal
title PUBLICADOR LINKS BIO - ROGERINHO

echo ======================================================
echo    PUBLICADOR AUTOMATICO - LINKS BIO ROGERINHO RAMOS
echo ======================================================
echo.

git add .
set /p msg="Mensagem da atualizacao (ex: Adicionado TheWise TSP): "
if "%msg%"=="" set msg="Atualizacao dos links %date%"

git commit -m "%msg%"
git push origin main

echo.
echo ======================================================
echo     LINKS BIO ATUALIZADOS COM SUCESSO!
echo ======================================================
echo.
pause
