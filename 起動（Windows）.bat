@echo off
cd /d "%~dp0"
set PORT=8765
start "" "http://localhost:%PORT%/index.html"
echo Starting 3D CAD server on port %PORT% ...
echo Do not close this window while using the app.
echo.
python -m http.server %PORT%
