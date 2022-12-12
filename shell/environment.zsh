# XDG vars
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIR="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_STATE_HOME="${HOME}/.local/state"

# Custom Variables
export SHELL_CONFIG="${XDG_CONFIG_HOME}/shell"

# Golang variables
export GOPATH="${XDG_DATA_HOME}/go"

# Android
export ANDROID_HOME="${XDG_DATA_HOME}/android"

# PATH

## Android
if ! grep -q "${ANDROID_HOME}/sdk/emulator" <<< ${PATH}
then
    PATH="${PATH}:${ANDROID_HOME}/sdk/emulator"
fi
if ! grep -q "${ANDROID_HOME}/sdk/tools" <<< ${PATH}
then
    PATH="${PATH}:${ANDROID_HOME}/sdk/tools"
fi
if ! grep -q "${ANDROID_HOME}/sdk/tools/bin" <<< ${PATH}
then
    PATH="${PATH}:${ANDROID_HOME}/sdk/tools/bin"
fi
if ! grep -q "${ANDROID_HOME}/sdk/platform-tools" <<< ${PATH}
then
    PATH="${PATH}:${ANDROID_HOME}/sdk/platform-tools"
fi

## User Binaries
if ! grep -q "${HOME}/.local/bin" <<< ${PATH}
then
    PATH="${PATH}:${HOME}/.local/bin"
fi

## Go Binaries
if ! grep -q "$(go env GOPATH)/bin" <<< ${PATH}
then
    PATH="${PATH}:$(go env GOPATH)/bin"
fi

## Yarn binaries
if ! grep -q "${HOME}/.yarn/bin" <<< ${PATH}
then
    PATH="${PATH}:${HOME}/.yarn/bin"
fi

## Export PATH
export PATH

# GPG vars
export GPG_TTY=${TTY}

# Term Colors
if [ "${TERM}" = "xterm-256color" ]
then
    export COLORTERM=${COLORTERM:=truecolor}
fi

# Haskell

## Cabal
export CABAL_CONFIG="${XDG_CONFIG_HOME}/cabal/config"
export CABAL_DIR="${XDG_DATA_HOME}/cabal"

## Stack
export STACK_ROOT="${XDG_DATA_HOME}/stack"

# Rust

## Cargo
export CARGO_HOME="${XDG_CONFIG_HOME}/cargo"

## Rustup
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

# Docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# GDB
export GDBHISTFILE="${XDG_CONFIG_HOME}/gdb/.gdb_history"

# Gem
export GEM_HOME="${XDG_DATA_HOME}/gem"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"

# Gnupg
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# Gradle
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

# GTK 2
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gktrc"

# KDE 4
export KDEHOME="${XDG_CONFIG_HOME}/kde"

# Less
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"

# MiniKube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube}"

# Node

## NPM
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

## NVM
export NVM_DIR="${XDG_DATA_HOME}/nvm"

# JAVA
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java"

# Python
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

# Vim
export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'

export HISTFILE="${XDG_STATE_HOME}/zsh/history"
