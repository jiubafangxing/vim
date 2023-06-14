call plug#begin()
#使用vim主题onedark
Plug 'joshdick/onedark.vim'

Plug 'junegunn/vim-easy-align'
#利用nerttree开启导航栏
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
#利用youcompleteme进行代码补全
Plug 'valloric/youcompleteme'
call plug#end()
colorscheme onedark
set number
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1
