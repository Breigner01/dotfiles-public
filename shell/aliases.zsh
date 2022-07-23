# General Aliases

## Emacs
alias ne="emacs -nw"

## ls and tree
alias exa="exa --icons --git"
alias e="exa"
alias l="exa -lahg"
alias ll="exa -lhg"
alias la="exa -laahg"
alias t="exa --tree -lhg"
alias ta="exa --tree -lahg"

# ZSH Config
alias rc="nvim ~/.config/zsh/.zshrc"
alias z="omz reload"

# BASH Config
alias bashrc="nvim ~/.bashrc"
alias sbash="source ~/.bashrc"

# SHELL Config

## Config Files
alias na="nvim ${SHELL_CONFIG}/aliases.zsh"
alias nenv="nvim ${SHELL_CONFIG}/environment.zsh"
alias ncomp="nvim ${SHELL_CONFIG}/completion.zsh"

# Coding Style
alias norm="norminette -luAi4"

# Update
alias u="update"

# Try Hack Me
alias thm="sudo openvpn ~/.config/openvpn/Breigner01.ovpn"

# Dotfiles Repository
alias dotf="cd ~/Documents/Github/Breigner01/dotfiles"

# GDB
alias gdb="gdb -n -x ${XDG_CONFIG_HOME}/gdb/init"

# Wget
alias wget="wget --hsts-file='${XDG_DATA_HOME}/wget-hsts'"

# Yarn
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
