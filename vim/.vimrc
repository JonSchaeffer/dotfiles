"map leader key to comma
let mapleader=","
set t_Co=256
set nocompatible

"Set ColorScheme
colorscheme Tomorrow-Night
"set background=dark

" enable syntax
syntax enable

" syntax highlighting (color)
syntax on

" allow filetype to be on
filetype on
"filetype plugin indent on

"--General Settings--
set backspace=2
set tabstop=2
set shiftwidth=4
"set softtabstop=4
set smarttab
set expandtab
"map jk to escape key
ino kj <Esc>
"Remove F1 Help
ino <F1> <nop>
nno <F1> <nop>
vno <F1> <nop>
set nu


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
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'geetarista/ego.vim'
Plug 'lervag/vimtex'
Plug 'altercation/vim-colors-solarized'
Plug 'squarefrog/tomorrow-night.vim'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'


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
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
				    let g:airline_symbols = {}
		endif
"Unicode Symbols		
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"airline Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''




"NerdTree
map <C-n> :NERDTreeToggle<CR>

" toggle NERDTree with ctrl + n
map <Leader>nt :NERDTreeToggle<ENTER>

"TagBar
nmap <F8> :TagbarToggle<CR>

" don't display junk in NERDTree
 let NERDTreeIgnore = ['\.class$', '\.pyc$', '\.aux$', 'fdb_latexmk$', '\.fls$', '\.out$']

""""" vimtex
" make compile nice
autocmd FileType tex :nmap <Leader>ll \ll
nnoremap <Leader>ss :LatexmkStop<CR>
