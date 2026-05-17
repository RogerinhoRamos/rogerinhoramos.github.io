@echo off
setlocal enabledelayedexpansion
title PUBLICADOR LINKS BIO - ROGERINHO

echo ======================================================
echo    PUBLICADOR AUTOMATICO - LINKS BIO ROGERINHO RAMOS
echo ======================================================
echo.

:: Preparar os arquivos
echo [1/4] Preparando arquivos...
git add .

:: Solicitar a mensagem de atualizacao
set /p "msg=Mensagem da atualizacao (ex: Adicionado TheWise TSP): "
if "!msg!"=="" set "msg=Atualizacao dos links"

:: Fazer o commit local
echo [2/4] Salvando atualizacao local...
git commit -m "!msg!"

:: Sincronizar com o servidor antes de enviar (Resolve o erro do fetch first)
echo [3/4] Sincronizando com o GitHub (Pull)...
git pull --rebase origin main

:: Enviar as atualizacoes
echo [4/4] Enviando atualizacoes (Push)...
git push origin main

if %errorlevel% neq 0 (
    echo.
    echo [!] Ocorreu um problema no envio. Verifique a conexao ou conflitos.
) else (
    echo.
    echo ======================================================
    echo     LINKS BIO ATUALIZADOS COM SUCESSO!
    echo ======================================================
)

echo.
pause
