# Keybindings Documentation

This document provides an overview of custom keybindings configured in this repository.

## Table of Contents

- [Tmux](#tmux)
- [Neovim](#neovim)
- [WezTerm](#wezterm)
- [Zsh](#zsh)
- [Bash](#bash)
- [Yazi](#yazi)

## Tmux

*File: `tmux/.tmux.conf`*

| Keybinding    | Action                    |
|---------------|---------------------------|
| `C-Space`     | Prefix key                |
| `Prefix c`    | Create a new window       |
| `Prefix -`    | Split pane horizontally   |
| `Prefix \|`   | Split pane vertically     |
| `C-j`         | Select pane down          |
| `C-k`         | Select pane up            |
| `C-h`         | Select pane left          |
| `C-l`         | Select pane right         |
| `S-A-j`       | Select window down        |
| `S-A-k`       | Select window up          |
| `S-A-h`       | Select window left        |
| `S-A-l`       | Select window right       |  
|`C-Space C-o`     | Rotate through the panes |
|`C-Space C-z`     | Suspend the current client |
|`C-Space Space`   | Select next layout |
|`C-Space !`       | Break pane to a new window |
|`C-Space #`       | List all paste buffers |
|`C-Space $`       | Rename current session |
|`C-Space &`       | Kill current window |
|`C-Space '`       | Prompt for window index to select |
|`C-Space (`       | Switch to previous client |
|`C-Space )`       | Switch to next client |
|`C-Space ,`       | Rename current window |
|`C-Space .`       | Move the current window |
|`C-Space /`       | Describe key binding |
|`C-Space 0`       | Select window 0 |
|`C-Space 1`       | Select window 1 |
|`C-Space 2`       | Select window 2 |
|`C-Space 3`       | Select window 3 |
|`C-Space 4`       | Select window 4 |
|`C-Space 5`       | Select window 5 |
|`C-Space 6`       | Select window 6 |
|`C-Space 7`       | Select window 7 |
|`C-Space 8`       | Select window 8 |
|`C-Space 9`       | Select window 9 |
|`C-Space :`       | Prompt for a command |
|`C-Space ;`       | Move to the previously active pane |
|`C-Space =`       | Choose a paste buffer from a list |
|`C-Space ?`       | List key bindings |
|`C-Space C`       | Customize options |
|`C-Space D`       | Choose a client from a list |
|`C-Space E`       | Spread panes out evenly |
|`C-Space L`       | Switch to the last client |
|`C-Space M`       | Clear the marked pane |
|`C-Space [`       | Enter copy mode |
|`C-Space ]`       | Paste the most recent paste buffer |
|`C-Space c`       | Create a new window |
|`C-Space d`       | Detach the current client |
|`C-Space f`       | Search for a pane |
|`C-Space i`       | Display window information |
|`C-Space l`       | Select the previously current window |
|`C-Space m`       | Toggle the marked pane |
|`C-Space n`       | Select the next window |
|`C-Space o`       | Select the next pane |
|`C-Space p`       | Select the previous window |
|`C-Space q`       | Display pane numbers |
|`C-Space s`       | Choose a session from a list |
|`C-Space t`       | Show a clock |
|`C-Space w`       | Choose a window from a list |
|`C-Space z`       | Zoom the active pane |
|`C-Space {`       | Swap the active pane with the pane above |
|`C-Space }`       | Swap the active pane with the pane below |
|`C-Space ~`       | Show messages |
|`C-Space DC`      | Reset so the visible part of the window follows the cursor |
|`C-Space PPage`   | Enter copy mode and scroll up |
|`C-Space Up`      | Select the pane above the active pane |
|`C-Space Down`    | Select the pane below the active pane |
|`C-Space Left`    | Select the pane to the left of the active pane |
|`C-Space Right`   | Select the pane to the right of the active pane |
|`C-Space M-1`     | Set the even-horizontal layout |
|`C-Space M-2`     | Set the even-vertical layout |
|`C-Space M-3`     | Set the main-horizontal layout |
|`C-Space M-4`     | Set the main-vertical layout |
|`C-Space M-5`     | Select the tiled layout |
|`C-Space M-n`     | Select the next window with an alert |
|`C-Space M-o`     | Rotate through the panes in reverse |
|`C-Space M-p`     | Select the previous window with an alert |
|`C-Space M-Up`    | Resize the pane up by 5 |
|`C-Space M-Down`  | Resize the pane down by 5 |
|`C-Space M-Left`  | Resize the pane left by 5 |
|`C-Space M-Right` | Resize the pane right by 5 |
|`C-Space C-Up`    | Resize the pane up |
|`C-Space C-Down`  | Resize the pane down |
|`C-Space C-Left`  | Resize the pane left |
|`C-Space C-Right` | Resize the pane right |
|`C-Space S-Up`    | Move the visible part of the window up |
|`C-Space S-Down`  | Move the visible part of the window down |
|`C-Space S-Left`  | Move the visible part of the window left |
|`C-Space S-Right` | Move the visible part of the window right |



## Neovim

*File: `nvim/.config/nvim/init.vim`, `nvim/.config/nvim/lua/vim-options.lua`*

| Mode   | Keybinding   | Action                        |
|--------|--------------|-------------------------------|
| Normal | `<leader>y`  | Copy to system clipboard      |
| Normal | `<leader>p`  | Paste from system clipboard   |
| Visual | `<leader>y`  | Copy selection to clipboard   |
| Normal | `<leader>d`  | Delete to void register       |
| Normal | `<leader>fi` | Open Neotree filesystem       |
| Normal | `<leader>gf` | Format using LSP              |
| Normal | `<leader>fg` | Live grep with Telescope      |
| Normal | `<leader>rt` | Find files with Telescope     |
| Normal | `K`          | Hover LSP documentation       |
| Normal | `gd`         | Go to definition              |
| Normal | `<leader>ca` | Code action                   |
| Normal | `<leader>d`  | Open diagnostic float         |
| Normal | `C-j`        | Select window down            |
| Normal | `C-k`        | Select window up              |
| Normal | `C-h`        | Select window left            |
| Normal | `C-l`        | Select window right           |


## WezTerm

*File: `wezterm/wezterm.lua`*

| Keybinding            | Action             |
|-----------------------|--------------------|
| `Ctrl-Shift-t`        | Open a new tab     |
| `Ctrl-Shift-w`        | Close current tab  |
| `Ctrl-Shift-LeftArrow`| Move to the left tab|
| `Ctrl-Shift-RightArrow`| Move to the right tab|

## Zsh

*File: `zsh/.zshrc`*

| Keybinding | Action                 |
|------------|------------------------|
| `Ctrl-r`   | Search command history |
| `Ctrl-a`   | Move to beginning of line |
| `Ctrl-e`   | Move to end of line    |

## Bash

*File: `bash/.bashrc`*

| Keybinding | Action                          |
|------------|---------------------------------|
| `alias ll` | `ls -alF`                       |
| `alias la` | `ls -A`                         |
| `alias l`  | `ls -CF`                        |
| `alias fox`| Open Firefox                    |
| `alias ..` | `cd ..`                         |
| `alias ...`| `cd ../..`                      |
| `alias yr2`| `cd ~/university/year2`         |
| `alias pp` | `cd ~/Documents/workspace/pp-lab`|
| `alias digi`| `cd ~/university/year2/Digital design`|
| `alias dsl`| `cd ~/university/year2/DSL`     |
| `alias sb` | Source bashrc                   |
| `alias robot35` | SSH to turtlebot4          |

## Yazi

*File: `yazi/.config/yazi/keymap.toml`*

| Keybinding | Action                        |
|------------|-------------------------------|
| `u`        | Undo the last operation       |
| `<C-r>`    | Redo the last operation       |
| `~`        | Open help                     |
| `<F1>`     | Open help                     |
| `k`        | Move cursor up                |
| `j`        | Move cursor down              |
| `<Up>`     | Move cursor up                |
| `<Down>`   | Move cursor down              |
| `n`        | Cancel the confirm            |
| `y`        | Submit the confirm            |
| `<C-c>`    | Cancel completion             |
| `<Tab>`    | Submit the completion         |
| `<Enter>`  | Submit the completion and input|
| `<A-k>`    | Move cursor up                |
| `<A-j>`    | Move cursor down              |
| `<C-p>`    | Move cursor up                |
| `<C-n>`    | Move cursor down              |

