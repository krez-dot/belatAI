@echo off
title belat - VISION mode (can see images)
cd /d "%~dp0"
cls
echo ==================================================
echo           belat  -  VISION mode (image brain)
echo ==================================================
echo.
echo   This brain can SEE images you attach, but is
echo   weaker at plain text chat than the normal one.
echo   For normal chat, use START-AI.bat instead.
echo.
echo   Loading the vision model into memory...
echo   KEEP THIS WINDOW OPEN while you use belat.
echo   Close it to shut the vision brain down.
echo.
echo ==================================================
echo.

if not exist "llamafile.exe" ( echo   ERROR: llamafile.exe missing. & pause & exit /b )
if not exist "vision-model.gguf" ( echo   ERROR: vision-model.gguf missing. & pause & exit /b )
if not exist "vision-mmproj.gguf" ( echo   ERROR: vision-mmproj.gguf missing. & pause & exit /b )

start "" "%~dp0belat.html"
llamafile.exe -m vision-model.gguf --mmproj vision-mmproj.gguf --server --host 127.0.0.1 --port 8090 --gpu disable --nologo

echo.
echo   Vision brain stopped. You can close this window now.
pause
