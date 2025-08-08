@echo off

set CAMINHO_PUTTY="C:\Program Files\PuTTY\putty.exe"

set SSH_URL=%~1

set SSH_IP=%SSH_URL:ssh://=%

if "%SSH_IP:~-1%"=="/" set SSH_IP=%SSH_IP:~0,-1%

for /f "tokens=1,2 delims=:" %%a in ("%SSH_IP%") do (
    set IP=%%a
    set PORT=%%b
)

if defined PORT (
    start "putty" %CAMINHO_PUTTY% -ssh %IP% -P %PORT%
) else (
    start "putty" %CAMINHO_PUTTY% -ssh %IP%
)

exit