# My Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed into your system

### Git

```
sudo pacman -S git
```

### Stow

```
sudo pacman -S stow
```

### Installation

First, checkout the dotfiles repo in your `$HOME` directory using git
```
git clone git@github.com/IAmRiteshKoushik/dotfiles.git
mv dotfiles .dotfiles
cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
