set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ------------------look plugins---------------
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
" -----------------completion and omni-----------------"
Plugin 'dansomething/vim-eclim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'oblitum/rainbow'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` 
" to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" The modelines bit prevents some security exploits having to do with modelines in 
" files. 
set modelines=0

"------------------tab options--------------"
"tabstop - количество пробелов, которыми символ табуляции отображается в тексте. 
"Оказывает влияние как на уже существующие табуляции, так и на новые. В случае 
"изменения значения, «на лету» применяется к тексту.
set tabstop=4

" softtabstop - количество пробелов, которыми символ табуляции отображается
" при добавлении.
" Несмотря на то, что при нажатии на Tab вы получите ожидаемый результат
" (добавляется новый символ табуляции), фактически в отступе могут
" использоваться как табуляция так и пробелы. Например, при установленных
" tabstop равной 8 и softtabstop равной 4, троекратное нажатие Tab приведет к
" добавлению отступа шириной 12 пробелов, однако сформирован он будет из
" одного символа табуляции и 4 пробелов.
set softtabstop=4

" по умолчанию используется для регулирование ширины отступов в пробелах,
" добавляемых командами >> и <<. Если значение опции не равно tabstop, как и в
" случае с softtabstop, отступ может состоять как из символов табуляций так и
" из пробелов. При включении опции — smarttab, оказывает дополнительное
" влияние.
set shiftwidth=4

"в случае включения этой опции, нажатие Tab в начале строки (если быть точнее,
"до первого непробельного символа в строке) приведет к добавлению отступа,
"ширина которого соответствует shiftwidth (независимо от значений в tabstop и
"softtabstop). Нажатие на Backspace удалит отступ, а не только один символ,
"что очень полезно при включенной expandtab. Напомню: опция оказывает влияние
"только на отступы в начале строки, в остальных местах используются значения
"из tabstop и softtabstop.
set smarttab

" в режиме вставки заменяет символ табуляции на соответствующее количество
" пробелов. Так же влияет на отступы, добавляемые командами >> и <<.
set expandtab

" делает то же, что и autoindent плюс автоматически выставляет отступы в
" «нужных» местах. В частности, отступ ставится после строки, которая
" заканчивается символом {, перед строкой, которая заканчивается символом },
" удаляется перед символом #, если он следует первым в строке и т.д.
" (подробнее help 'smartindent').
set smartindent


set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

"------------------handle long lines correctly------------"
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
au FocusLost * :wa
"------enabled solarized theme---------"
" set t_Co=16
syntax enable
" set background=dark
colorscheme molokai

let g:EclimCompletionMethod = 'omnifunc'
let g:airline#extensions#tabline#enabled = 1

"-----------------leader commands-----------------
let mapleader = "," "map leader command to ,
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <F5> :GundoToggle<CR>
nnoremap <leader>cp :colorscheme peachpuff<CR>
nnoremap <leader>cl :colorscheme koehler<CR>
nnoremap <leader>cm :colorscheme molokai<CR>

let g:rainbow_active = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <leader>sc :SyntasticCheck<CR>
nnoremap <leader>si :SyntasticInfo<CR>
nnoremap <leader>sr :SyntasticReset<CR>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*/build/**
" disable caching
let g:ctrlp_use_caching=0
let g:molokai_original=1
let g:rehash256 = 1
