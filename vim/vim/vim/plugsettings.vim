" Automatically install plug if it's not there
if empty(glob('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start plugin list
call plug#begin('$HOME/.config/vim/plugged')

Plug 'Yohannfra/Nvim-Switch-Buffer'
Plug 'aperezdc/vim-template'
Plug 'brooth/far.vim'
Plug 'majutsushi/tagbar'
Plug 'nanotech/jellybeans.vim'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Gummybears'
Plug 'idanarye/vim-vebugger'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
Plug 'crusoexia/vim-monokai'
if has ('nvim')
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'preservim/nerdcommenter'
else
    Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all --clangd-completer'}
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'Yohannfra/Vim-Goto-Header'
endif
Plug 'jjo/vim-cue'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" End plugin list
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
