@echo off
REM uninstaller.bat - Removes MacroMaker and all associated files

setlocal enabledelayedexpansion

echo.
echo ================================
echo  MacroMaker Uninstaller
echo ================================
echo.

set INSTALL_DIR=%PROGRAMFILES%\MacroMaker

if not exist "%INSTALL_DIR%" (
    echo MacroMaker is not installed.
    echo Nothing to uninstall.
    pause
    exit /b 0
)

echo Found MacroMaker installation at:
echo %INSTALL_DIR%
echo.

REM Confirm uninstall
set /p CONFIRM="Do you want to uninstall MacroMaker? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo Uninstall cancelled.
    pause
    exit /b 0
)

REM Stop running instance
echo Closing MacroMaker if running...
taskkill /IM MacroMaker.exe /F >nul 2>&1
timeout /t 1 /nobreak

REM Remove Start Menu shortcut
echo Removing Start Menu shortcut...
del /q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\MacroMaker.lnk" >nul 2>&1

REM Remove Desktop shortcut
echo Removing Desktop shortcut...
del /q "%USERPROFILE%\Desktop\MacroMaker.lnk" >nul 2>&1

REM Backup saved macros
if exist "%INSTALL_DIR%\macros.amc" (
    echo Backing up saved macros to Desktop...
    copy "%INSTALL_DIR%\macros.amc" "%USERPROFILE%\Desktop\MacroMaker-macros-backup.amc" >nul 2>&1
)

REM Remove installation directory
echo Removing installation files...
rmdir /s /q "%INSTALL_DIR%" >nul 2>&1

if not exist "%INSTALL_DIR%" (
    echo.
    echo ================================
    echo  Uninstall Complete
    echo ================================
    echo.
    echo MacroMaker has been successfully uninstalled.
    echo.
    echo Your saved macros have been backed up to:
    echo %USERPROFILE%\Desktop\MacroMaker-macros-backup.amc
    echo.
) else (
    echo.
    echo Warning: Could not remove all files.
    echo You may need administrator privileges.
    echo.
)

pause
exit /b 0
