"======================================================
 "===== ===============================================              
 "=====  (_) __ ___  __ __   _(_)_ __ ___    ==========
 "=====  | |/ _` \ \/ / \ \ / / | '_ ` _ \   ==========
 "=====  | | (_| |>  <   \ V /| | | | | |   |==========
 "===== _/ |\__,_/_/\_\   \_/ |_|_| |_| |_  |==========
 "=====|__/                                  ==========
 "=====================================================
 "=====================================================
 "=====================================================

syntax on
imap jj <Esc>
nmap <space> :
set foldmethod=indent
set foldlevel=99
set nu
set cursorline
set wrap
set showcmd
set encoding=utf-8
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

let python_highlight_all=1
let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set clipboard=unnamed
set scrolloff=5
"===
"===plugins list===
"===
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vimcolors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'powerline/powerline'
Plug 'lokaltog/vim-powerline'
Plug 'puremourning/vimspector'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()


"===
"=== setting colorscheme
"===
color snazzy
let g:SnazzyTransparent = 1
let g:Powerline_symbols = 'fancy'

"===
"=== mapping keys
"===
map <silent> <C-e> :NERDTreeToggle<CR>
noremap R :source $MYVIMRC<CR>
noremap s <nop>
noremap S :w<CR>
noremap Q :q<CR>

"split setting
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

"change size
map <right> :vertical res +5<CR>
map <left> :vertical res -5<CR>

"tab setting
map <S-n> :tabe<CR>
map th :-tabnext<CR>
map tl :tabnext<CR>

"set mouse=a

"mouse pointer
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"reset last time of mouse pointer
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" figlet
map tx :r !figlet
