@echo off
REM package-release.bat - Creates a release package with bundled Python DLLs and dependencies

setlocal enabledelayedexpansion

echo.
echo ================================
echo  Creating Release Package
echo ================================
echo.

REM Check if dist\MacroMaker.exe exists
if not exist "dist\MacroMaker.exe" (
    echo Error: dist\MacroMaker.exe not found. Please run build.bat first.
    pause
    exit /b 1
)

REM Create release staging directory
set RELEASE_STAGE=release-stage
if exist "%RELEASE_STAGE%" rmdir /s /q "%RELEASE_STAGE%" >nul 2>&1
mkdir "%RELEASE_STAGE%"

echo Copying MacroMaker executable...
copy "dist\MacroMaker.exe" "%RELEASE_STAGE%\MacroMaker.exe" >nul 2>&1

echo Creating release package: MacroMaker-release.zip
powershell -NoProfile -Command "Compress-Archive -Path '%RELEASE_STAGE%\*' -DestinationPath 'MacroMaker-release.zip' -Force"

echo Done!
pause
exit /b 0
