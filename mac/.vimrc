set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:netrw_liststyle=3
let g:explVertical=1 " Split vertically
let g:explStartRight=0 " Put new explorer window to the left of the current window
set et
set ai
set cin
set cinoptions=1lg2h2(0J1j1
set ru
set bs=indent,eol,start
set sw=4  "this is the level of autoindent, adjust to taste
set wildmode=longest,list,full
set wildmenu
set fu

set showmode
set hls
set tabstop=4
set incsearch
set vb
set textwidth=79
set colorcolumn=80
set comments=sl:/*,mb:**,elx:*

colorscheme darkblue
syntax on
hi type ctermfg=cyan
hi search ctermbg=white

set tabpagemax=50
set number
set showmatch           " Show matching brackets

"show whitespace
set listchars=tab:>-,trail:·
set list
nmap <silent> <leader>s :set nolist!<CR>

"case insensitive searching
set ignorecase
set smartcase

"new tab
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <D-t> :tabnew<CR>

"switch between windows
nnoremap <silent> <D-j> <C-w><C-w>

"map cmd+X -> ctrl+X because of mac idiocy
nnoremap <silent> <D-d> <C-d>
nnoremap <silent> <D-u> <C-u>
nnoremap <silent> <D-r> <C-r>

" Space will toggle folds!
nnoremap <space> za

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

nnoremap <C-p> "+p
nnoremap <D-k> "+p

"page up and down
nnoremap tj <C-d>
nnoremap tk <C-u>

"new tab, close tab
nnoremap tt :tabnew<CR>
nnoremap cc :tabnew<CR>

"tab backwards
nnoremap gr gT

"switch between windows
nnoremap vv <C-w><C-w>

"redo
nnoremap rr <C-r>

"save with ss
nnoremap ss :w<CR>

"never move up to press escape!
inoremap jk <Esc>

filetype plugin on

command Nt :NERDTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
