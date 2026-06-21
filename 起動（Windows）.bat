@echo off
chcp 65001 >nul
title かんたん3D CAD
cd /d "%~dp0"
set PORT=8765

echo かんたん3D CAD を起動しています...
start "" "http://localhost:%PORT%/index.html"
echo.
echo ブラウザが開きます。このウィンドウは閉じないでください（サーバーが止まります）。
echo 終了するにはこのウィンドウを閉じてください。
echo.
python -m http.server %PORT%
