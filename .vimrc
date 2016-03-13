" map leader key to comma
let mapleader=","

set nocompatible

" enable syntax
syntax enable

" syntax highlighting (color)
syntax on

" allow filetype to be on
filetype on
filetype plugin indent on




" Vim plugin manager Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/vim-colors-solarized'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


" don't wrap lines, leave them on same line
set nowrap

" show line numbers
set number
"
"numbers in relation to current line
"set relativenumber


set backspace=2
"
"size of a hard tabstop
set tabstop=2

"Vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
set laststatus=2


