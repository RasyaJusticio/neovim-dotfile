# RasyaJusticio's Neovim Dotfile

## Requirements

| Tool   | Version |
| ------ | ------- |
| NeoVim | > v0.11 |

## Keymaps

### General

| Keys             | Action              |
| ---------------- | ------------------- |
| `<Space>q`       | Quit                |
| `<Space>e`       | NeoVim Explorer     |
| `<Space><Space>` | No highlight search |

### Telescope

| Keys         | Action                                           |
| ------------ | ------------------------------------------------ |
| `<Space>lf`  | Find Files                                       |
| `<Space>laf` | Find all files (ignoring git and hidden)         |
| `<Space>le`  | Find text in files                               |
| `<Space>lae` | Find text in all files (ignoring git and hidden) |
| `<Space>lae` | Find text in all files (ignoring git and hidden) |

### Surround

| Keys                         | Action                                      |
| ---------------------------- | ------------------------------------------- |
| `ys<Motion><Delimiter>`      | Surround object with the delimiter          |
| `cs<DelimiterA><DelimiterB>` | Change delimiter A with delimiter B         |
| `ds<Delimiter>`              | Delete the delimiter surrounding the object |

### Comments

| Keys  | Action                          |
| ----- | ------------------------------- |
| `gcc` | Comment/uncomment selected line |
