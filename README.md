# macos-dotfiles

## Setup

Clone repository

```bash
yadm clone git@github.com:piyoki/macos-dotfiles.git
```

Use default gitconfig

```ini
# ~/.config/yadm/config
[include]
  path=~/.gitconfig
```

## Submodules

Add new submodules

```bash
yadm submodule add git@github.com:<owner/repo>.git modules/<module_name>
# e.g
# yadm submodule add git@github.com:yqlbu/dot-nvim.git modules/nvim
```

Sync submodules from remote

```bash
yadm submodule update --recursive --remote
```

Create smlink

```bash
sudo rm -rf $HOME/.config/<module_name>
ln -s $HOME/modules/<module_name> $HOME/.config/<module_name>
```
