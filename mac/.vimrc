function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --all
  endif
endfunction

" BEGIN Install Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'github/copilot.vim'

call plug#end()
" END Install Plugins

" Disable YouCompleteMe
let g:loaded_youcompleteme = 1

" BEGIN NERDTree set up
filetype plugin on
command Nt :NERDTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
autocmd TabNewEntered * wincmd p
nnoremap <C-f> :NERDTreeFind<CR>
" END NERDTree set up

set encoding=utf-8
set et
set ai
set cin
set cinoptions=1lg2h2(0J1j1
set ru
set bs=indent,eol,start
set sw=4  "this is the level of autoindent, adjust to taste
set wildmode=longest,list,full
set wildmenu
set showmode
set hls
set tabstop=4
set incsearch
set vb
set textwidth=88
set colorcolumn=88
set comments=sl:/*,mb:**,elx:*
colorscheme torte
syntax on
hi type ctermfg=cyan
hi search ctermbg=darkblue
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

nnoremap <C-y> "+p
nnoremap <D-k> "+p

"page up and down
nnoremap tj <C-d>
nnoremap tk <C-u>

"new tab, close tab
nnoremap tt :tabnew<CR>
nnoremap cc :tabclose<CR>

"tab backwards
nnoremap gr gT

"switch between windows
nnoremap ,, <C-w>w

"redo
nnoremap rr <C-r>

"save with ss
nnoremap ss :w<CR>

"never move up to press escape!
inoremap jk <Esc>

"remove search highlighting
nnoremap <CR> :noh<CR>

"yy etc will work with clipboard
set clipboard=unnamed

"fuzzy search
set rtp+=/usr/local/opt/fzf
