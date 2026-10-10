@echo off
title My Private AI (local)
cd /d "%~dp0"
cls
echo ==================================================
echo              MY PRIVATE AI   -   local
echo ==================================================
echo.
echo   Loading the AI into memory...
echo   A chat will open in your web browser shortly.
echo   KEEP THIS WINDOW OPEN while you chat.
echo   Close it to shut the AI down.
echo.
echo ==================================================
echo.

if not exist "llamafile.exe" (
  echo   ERROR: llamafile.exe missing from this folder.
  pause
  exit /b
)
if not exist "model.gguf" (
  echo   ERROR: model.gguf missing from this folder.
  pause
  exit /b
)

rem open YOUR custom Need A Ride page, then start the engine behind it
start "" "%~dp0Need-A-Ride.html"
llamafile.exe -m model.gguf --server --host 127.0.0.1 --port 8090 --gpu disable --nologo

echo.
echo   AI stopped. You can close this window now.
pause
