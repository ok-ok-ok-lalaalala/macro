# Macro Maker

A high-performance macro recording and playback tool for Windows with support for keyboard and mouse automation, .amc macro files, and GitHub-integrated patch distribution.

## Features

- Record and playback keyboard and mouse macros
- Save/load macros in `.amc` JSON format
- Global hotkey support (Delete key to disable/enable)
- Zero keyboard delay for precise automation
- Patch distribution system with auto-update support
- Tkinter-based GUI
- Standalone .exe via PyInstaller

## Getting Started

1. Clone the repo
2. Run `build.bat` to create the venv and build the executable
3. The executable will be in `dist/MacroMaker.exe`

## Patches

Patches are managed in the `patches/` folder and auto-applied during builds. See `PATCHES_README.md` for details.
