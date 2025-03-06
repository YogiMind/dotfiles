# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
sudo apt install git
```

### GNU Stow

```
sudo apt install stow
```

## Installation

First, pull the dotfiles repo into your $HOME directory using git

```
git clone git@github.com:YogiMind/dotfiles.git ~/
cd ~/dotfiles
```


Then use GNU \<package> to create symlinks


Example for nvim

```
stow nvim
```

