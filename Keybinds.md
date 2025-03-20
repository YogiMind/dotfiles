# Keybindings Documentation

This document provides an overview of custom keybindings configured in this repository.

## Table of Contents

- [Neovim](#neovim)
- [Tmux](#tmux)
- [WezTerm](#wezterm)
- [Zsh](#zsh)

## Neovim

*File: `nvim/.config/nvim/init.vim`*

| Mode | Keybinding | Action |
|------|------------|--------|
| Normal | `<leader>y` | Copy to system clipboard |
| Normal | `<leader>p` | Paste from system clipboard |
| Visual | `<leader>y` | Copy selection to system clipboard |

## Tmux

*File: `tmux/.tmux.conf`*

| Keybinding | Action |
|------------|--------|
| `C-Space` | Prefix key |
| `Prefix c` | Create a new window |
| `Prefix -` | Split pane horizontally |
| `Prefix \|` | Split pane vertically |

## WezTerm

*File: `wezterm/wezterm.lua`*

| Keybinding | Action |
|------------|--------|
| `Ctrl-Shift-t` | Open a new tab |
| `Ctrl-Shift-w` | Close current tab |
| `Ctrl-Shift-LeftArrow` | Move to the left tab |
| `Ctrl-Shift-RightArrow` | Move to the right tab |

## Zsh

*File: `zsh/.zshrc`*

| Keybinding | Action |
|------------|--------|
| `Ctrl-r` | Search command history |
| `Ctrl-a` | Move to beginning of line |
| `Ctrl-e` | Move to end of line |
