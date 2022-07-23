set runtimepath^=$XDG_CONFIG_HOME/vim
let &packpath = &runtimepath

let g:ruby_host_prog = system("whereis neovim-ruby-host | cut -d: -f2 | xargs |tr -d '\n'")

source ${XDG_CONFIG_HOME}/vim/vimrc
source ${XDG_CONFIG_HOME}/vim/cocsettings.vim
