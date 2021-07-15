
set guifont=Microsoft_YaHei_Mono:h18:cGB2312:qDRAFT
" 设置文件编码格式
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif

set cursorline
set cul         
set showmatch
set tabstop=4
set number
set shiftwidth=4
set autoindent
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files
set wrap
set wildmenu
set ignorecase
set smartcase
set mouse=a
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/AppData/Local/nvim/vimfiles/plugged')
	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'Yggdroot/indentLine'
	Plug 'jiangmiao/auto-pairs'
	Plug 'connorholyday/vim-snazzy'
call plug#end()

nnoremap <C-f> :NERDTree<CR>
colorscheme snazzy
