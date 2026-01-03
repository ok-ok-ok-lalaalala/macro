This folder contains patch files for Macro Maker that fix bugs and add enhancements.

Patches are automatically fetched and applied during builds via the `update_patches.bat` script.

## Current Patches

- `20260103_tkinter-treeview-width.patch` - Fixes Tkinter Treeview width option error (TclError)

## How Patches Are Applied

During build, `apply_patches.bat` processes all `.patch` files in this directory using the GNU patch tool.

## Contributing Patches

To add a new patch:
1. Make the fix in the source code
2. Generate a unified diff: `git diff > patches/YYYYMMDD_description.patch`
3. Commit and push to this repo
4. The next build will automatically apply it
