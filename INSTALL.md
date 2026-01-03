# MacroMaker Installation Guide

## Quick Start

1. Download `MacroMaker-release.zip` from GitHub releases
2. Extract to any folder
3. Run `installer.bat` (right-click → Run as Administrator)
4. MacroMaker will install to `C:\Program Files\MacroMaker`

## Installer Features

- **Auto-Detection**: Checks if already installed; if yes, just launches
- **Bundled Dependencies**: All Python DLLs included
- **Start Menu Shortcut**: Automatically created
- **Desktop Shortcut**: Automatically created

## Uninstalling

Run `uninstaller.bat` from `Program Files\MacroMaker`

Your saved macros will be backed up to Desktop.

## For Developers

To create a release:

```bash
.\build.bat              # Build executable
.\package-release.bat    # Create MacroMaker-release.zip
```

Then upload `MacroMaker-release.zip` to GitHub releases.
