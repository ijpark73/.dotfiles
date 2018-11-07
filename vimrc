set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" My Bundles Here:
"
Plugin 'Tagbar'
Plugin 'neocomplcache'
Plugin 'L9'
"Plugin 'nerdtree'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'
Plugin 'gtags.vim'
Plugin 'lrvick/Conque-Shell'
"Plugin 'vimshell.vim'
"Plugin 'vimproc.vim'
"Plugin 'The-NERD-Commenter'
Plugin 'DoxygenToolkit.vim'
Plugin 'SearchComplete'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()

syntax enable
"set background=dark
"colorscheme solarized

" Syntax Highlighting
if has("syntax")
	syntax on
endif

set encoding=utf-8
set autoindent
set cindent
set nu
set ts=4
set sts=4
set shiftwidth=4
set hlsearch " searching keyword highlighting
set wildmode=longest,list
set autowrite
set autoread
set bs=eol,start,indent
set history=256
set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set incsearch


" locate cursor on last position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
