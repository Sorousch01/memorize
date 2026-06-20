@echo off
title Memorize Build Tool

echo ========================================
echo   Memorize - Build Tool
echo ========================================
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python not found!
    pause
    exit /b 1
)

echo Building Memorize.exe...
pyinstaller --onefile --windowed --name Memorize memorize.py

if errorlevel 1 (
    echo [ERROR] Build failed.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   BUILD SUCCESSFUL!
echo ========================================
echo.
echo Your new Memorize.exe is in the "dist" folder.
echo.
pause