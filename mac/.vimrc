let g:netrw_liststyle=3
let g:explVertical=1 " Split vertically
let g:explStartRight=0 " Put new explorer window to the left of the current window
set et
set ai
set cin
set cinoptions=1lg2h2(0J1
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

" Space will toggle folds!
nnoremap <space> za

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

nnoremap <C-p> "+p
nnoremap <D-k> "+p

filetype plugin on

