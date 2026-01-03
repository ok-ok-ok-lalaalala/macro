# Macro Maker

A high-performance macro recording and playback tool for Windows with support for keyboard and mouse automation, .amc macro files, and GitHub-integrated patch distribution.

## Features

- **Live Keyboard Input** — Click and type to instantly record keys
- **Real-time Recording** — Capture keyboard and mouse with sub-millisecond precision
- **Playback Optimization** — Reduced latency for smooth automation
- **Save/Load Macros** — Store macros in `.amc` JSON format
- **Global Hotkey** — Delete key to disable/enable playback
- **Auto-Update** — Patches fetched and applied automatically from GitHub
- **Tkinter GUI** — Clean, intuitive interface
- **Standalone Exe** — PyInstaller packaged, no Python needed for users

## Quick Start

### Option 1: Download & Install (Recommended)

1. Visit: https://github.com/ok-ok-ok-lalaalala/macro/releases
2. Download `MacroMaker-release.zip`
3. Extract and run `installer.bat` (Admin)
4. Done! MacroMaker is installed to `Program Files\MacroMaker`

### Option 2: Run Portable

1. Download `MacroMaker-release.zip`
2. Extract to any folder
3. Double-click `MacroMaker.exe`
4. No installation needed!

### Option 3: Build from Source

```bash
git clone https://github.com/ok-ok-ok-lalaalala/macro.git
cd macro
.\build.bat              # Builds with auto-patches from GitHub
# Output: dist\MacroMaker.exe
```

## How to Use

### Record a Macro

1. Click **"New Macro"** and give it a name
2. Click **"Start Recording"**
3. Perform your actions (keyboard, mouse)
4. Click **"Stop Recording"**
5. Click **"Save Macro"**

### Live Keyboard Input (Fast!)

1. Select a macro
2. Click the **"Live Keyboard Input"** box
3. Type keys — they're instantly added to your macro
4. Click outside to stop

### Play a Macro

1. Select a macro
2. Click **"Play Macro"**
3. Press **Delete** key to stop playback

## Installation

See [INSTALL.md](INSTALL.md) for detailed installation and release guide.

### Installer Features

- ✅ **Auto-detects** if already installed
- ✅ **Creates** Start Menu & Desktop shortcuts
- ✅ **Bundles** all Python DLLs
- ✅ **No admin required** for portable use

### Uninstall

Run `uninstaller.bat` from `Program Files\MacroMaker`

Your saved macros are backed up to Desktop.

## Patches & Updates

### Automatic Updates

When you build:
```bash
.\build.bat
```

It automatically:
1. Fetches latest patches from GitHub
2. Applies them
3. Rebuilds the executable
4. Cleans old versions

### Manual Patch Updates

Patches are stored in `patches/` folder. To pull updates:
```bash
.\update_patches.bat
```

## Project Structure

```
.
├── macro_maker.py          # Main GUI
├── macro_engine.py         # Recording/playback engine
├── macro_format.py         # .amc file format
├── build.bat              # Build script (with auto-patch)
├── package-release.bat    # Create release package
├── installer.bat          # User installer
├── uninstaller.bat        # User uninstaller
├── patches/               # GitHub patch files
├── requirements.txt       # Python dependencies
└── dist/                  # Compiled executable
```

## Architecture

- **pynput** — Low-latency keyboard/mouse capture and control
- **Tkinter** — Cross-platform GUI
- **PyInstaller** — Standalone executable packaging
- **GitHub API** — Auto-update patches from GitHub

## Building for Release

```bash
# 1. Make your changes, commit
git add . && git commit -m "Your changes"

# 2. Build executable
.\build.bat

# 3. Create release package
.\package-release.bat
# Creates: MacroMaker-release.zip

# 4. Tag and push to GitHub
git tag v1.0.0
git push origin v1.0.0

# GitHub Actions will auto-create release with MacroMaker-release.zip
```

## Troubleshooting

**"MacroMaker.exe not found"**
- Run `build.bat` to compile first
- Check `build_log.txt` for errors

**"Permission denied" installing shortcuts**
- Run `installer.bat` as Administrator

**"Failed to apply patches"**
- Check GitHub repo has `patches/` folder with `.patch` files
- Run `debug_info.bat` to diagnose

**Slow playback**
- Patches include latency optimizations
- Try running `.\build.bat` to update

## Performance Notes

- **Recording**: ~1ms capture latency
- **Playback**: <1ms action execution (with optimizations)
- **Live Input**: Instant key-to-macro mapping
- **Memory**: ~50MB typical, <100MB peak

## Contributing

Feel free to fork and submit patches!

Patches go in `patches/` folder as `.patch` files and are auto-distributed.

## License

[Your License Here]

## Links

- **GitHub**: https://github.com/ok-ok-ok-lalaalala/macro
- **Issues**: https://github.com/ok-ok-ok-lalaalala/macro/issues
- **Releases**: https://github.com/ok-ok-ok-lalaalala/macro/releases
