" Automatically install plug if it's not there
" Install CoC plugins at next launch if user has nvim
if empty(glob($XDG_CONFIG_HOME . '/vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter *
        \ PlugInstall --sync | UpdateRemotePlugins | bd | source $MYVIMRC
endif

" Automatically install missing plugins on startup
autocmd VimEnter *
    \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \ | PlugInstall --sync
        \ | q
    \ | endif

" Start plugin list
call plug#begin('$XDG_CONFIG_HOME/vim/plugged')

if has ('nvim')
    Plug 'preservim/nerdcommenter'
    Plug 'xiyaowong/coc-code-action-menu.nvim'
    Plug 'weilbith/nvim-code-action-menu'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
    Plug 'Yohannfra/Nvim-Switch-Buffer'
    let g:coc_global_extensions = [
        \ 'coc-conventional',
        \ 'coc-css',
        \ 'coc-deno',
        \ 'coc-discord-neovim',
        \ 'coc-emoji',
        \ 'coc-eslint',
        \ 'coc-fish',
        \ 'coc-format-json',
        \ 'coc-html',
        \ 'coc-html',
        \ 'coc-java',
        \ 'coc-json',
        \ 'coc-lists',
        \ 'coc-markdownlint',
        \ 'coc-marketplace',
        \ 'coc-pairs',
        \ 'coc-prettier',
        \ 'coc-pyright',
        \ 'coc-sh',
        \ 'coc-simple-react-snippets',
        \ 'coc-snippets',
        \ 'coc-styled-components',
        \ 'coc-tsserver',
        \ 'coc-ultisnips',
        \ 'coc-vimlsp',
        \ 'coc-word',
        \ 'coc-xml',
    \ ]
    "\ 'coc-fzf-preview',
    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
else
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'Yohannfra/Vim-Goto-Header'
    Plug 'jiangmiao/auto-pairs'
    Plug 'rhysd/vim-clang-format'
    Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all --clangd-completer'}
endif
Plug 'EdenEast/nightfox.nvim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'aperezdc/vim-template'
Plug 'brooth/far.vim'
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'idanarye/vim-vebugger'
Plug 'itspriddle/vim-shellcheck'
Plug 'lambdalisue/battery.vim'
Plug 'lambdalisue/suda.vim'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'mustache/vim-mustache-handlebars'
Plug 'neovimhaskell/haskell-vim'
Plug 'nikvdp/ejs-syntax'
Plug 'pest-parser/pest.vim'
Plug 'scrooloose/nerdtree'
Plug 'skanehira/denops-docker.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'stevearc/vim-arduino'
Plug 'triglav/vim-visual-increment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-denops/denops.vim'
" End plugin list

" Look into this when it gets more advanced
" Plug 'Shougo/ddu.vim'

call plug#end()
