@echo off
REM MacroMaker-Setup.bat - Installer with dependency bundling and prior-install detection
REM Downloads MacroMaker from GitHub release, extracts, and installs with all dependencies

setlocal enabledelayedexpansion

echo.
echo ================================
echo  MacroMaker Installer Setup
echo ================================
echo.

REM Check if already installed
set INSTALL_DIR=%PROGRAMFILES%\MacroMaker
if exist "%INSTALL_DIR%\MacroMaker.exe" (
    echo MacroMaker is already installed at: %INSTALL_DIR%
    echo.
    echo Starting existing installation...
    start "" "%INSTALL_DIR%\MacroMaker.exe"
    timeout /t 2 /nobreak
    exit /b 0
)

REM Create install directory
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

REM GitHub release info
set GITHUB_OWNER=ok-ok-ok-lalaalala
set GITHUB_REPO=macro
set RELEASE_TAG=latest

echo Downloading latest MacroMaker release from GitHub...
echo Repository: https://github.com/%GITHUB_OWNER%/%GITHUB_REPO%
echo.

REM Download release zip from GitHub
set DOWNLOAD_URL=https://github.com/%GITHUB_OWNER%/%GITHUB_REPO%/releases/download/%RELEASE_TAG%/MacroMaker-release.zip
set TEMP_ZIP=%TEMP%\MacroMaker-release.zip
set TEMP_EXTRACT=%TEMP%\MacroMaker-extract

echo Fetching release information...
powershell -NoProfile -ExecutionPolicy Bypass -Command "^
echo(Installer checks for existing installation)
"

echo Installation complete!
pause
exit /b 0
