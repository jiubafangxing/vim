call plug#begin()
Plug 'joshdick/onedark.vim'

Plug 'junegunn/vim-easy-align'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'valloric/youcompleteme'
call plug#end()
colorscheme onedark
set number
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1
