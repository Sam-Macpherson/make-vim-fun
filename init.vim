" curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" install node.js >= 10.12 for COC
" curl -sL install-node.now.sh/lts | bash

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
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
let g:airline_symbols.whitespace = '👻'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' L'
let g:airline_symbols.colnr = ':'
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.maxlinenr = ''

let g:deoplete#enable_at_startup = 1

syntax on
colorscheme gruvbox
set number relativenumber
set hlsearch
set mouse=a
set colorcolumn=120
set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=10
set ruler
set title
set nostartofline
set guicursor=i:block

" Custom bindings.

" NERDTree bindings.
map <Esc>f <A-f>
nnoremap <A-f> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

