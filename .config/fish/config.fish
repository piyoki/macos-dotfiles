##
##  | | _______   __           HIKARI AI
##  | |/ / _ \ \ / /           https://hikariai.net
##  |   <  __/\ V /            https://link.hikariai.net
##  |_|\_\___| \_/             https://github.com/miooochi
##
##  My fish shell config. Nothing fancy, but I like it

### Paths ###
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.npm-global/bin
fish_add_path $HOME/.local/scripts
fish_add_path $HOME/go/bin
fish_add_path $HOME/.nix-profile/bin
fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.tmux/plugins/tmuxifier/bin
# fish_add_path /usr/lib/jvm/default-runtime/bin

### Functions ###
source $HOME/.config/fish/functions/bangbang.fish
source $HOME/.config/fish/functions/gnupg.fish
source $HOME/.config/fish/functions/_fzf_gopass.fish
# source $HOME/.config/fish/functions/_fzf_atuin_history.fish

### Theme ###
source $HOME/.config/fish/themes/cool-beans-nix.fish

### General Settings ###
set fish_greeting # Turns off the intro message when pulling up fish shell
set EDITOR "nvim" # Sets the $EDITOR to vim

export CLICOLOR=1
export LS_COLORS=(vivid generate nord)
export LC_ALL=C.UTF-8

# export SOPS_PGP_FP=""
# export SOPS_AGE_KEY=(age -i $HOME/.age/age-yubikey-identity.txt -d $HOME/.age/age-yubikey-master.enc.key)
# export SOPS_AGE_RECIPIENTS=(cat $HOME/.age/age-yubikey-master.pub)
# export SOPS_AGE_KEY_FILE=$HOME/.age/age-yubikey-master.key

export FZF_DEFAULT_OPTS_FILE=$HOME/.fzfrc

## Java
export JAVA_HOME=/usr/lib/jvm/default

### Fish Abbr ###
source $HOME/.config/fish/config.d/abbr_common.fish
source $HOME/.config/fish/config.d/abbr_devops.fish
source $HOME/.config/fish/config.d/abbr_git.fish
source $HOME/.config/fish/config.d/abbr_misc.fish
source $HOME/.config/fish/config.d/abbr_nix.fish
source $HOME/.config/fish/config.d/abbr_program.fish
source $HOME/.config/fish/config.d/abbr_system.fish

### Dev ENV ###

# fzf key-remaps
fzf_configure_bindings --git_status --history=\ch --variables=\cv --directory=\cx --git_log=\cg
# lf history work-dir
bind \co 'set old_tty (stty -g); stty sane; lf; stty $old_tty; commandline -f repaint'
# zoxide
zoxide init fish | source
# tmuxifier
eval (tmuxifier init - fish)
set -gx TMUXIFIER_LAYOUT_PATH $HOME/.tmuxifier
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# XDG
set -gx XDG_CONFIG_HOME $HOME/.config
