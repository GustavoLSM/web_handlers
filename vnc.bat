@echo off

set CAMINHO_VNC_VIEWER="C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe"

set VNC_URL=%~1

set VNC_IP=%VNC_URL:vnc://=%

start "UltraVNC" %CAMINHO_VNC_VIEWER% %VNC_IP%

exit