runtime! archlinux.vim

filetype on
syntax on

set background=dark
set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab

" ==========
" Initialize
" ==========
autocmd VimEnter * NERDTree

" ========
" Map keys
" ========
" nmap 1 :NERDTreeToggle<CR>
silent! nmap <C-p> :NERDTreeToggle<CR>
" nmap 2 :TagbarToggle<CR>
" nmap 3 :IndentGuidesToggle<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'dracula/vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
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
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 


" ========
" NERDTree
" ========
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=30

" =======
" Airline
" =======
let g:airline_theme='light'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:python_recommended_style = 0

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1

let b:airline_whitespace_disabled = 1

" =======
" Tag Bar
" =======
let g:tagbar_left=1
let g:tagbar_width=30

" =======
" Dracula
" =======
let g:dracula_colorterm=0
let g:dracula_italic=0

" =============
" Indent Guides
" =============
let g:indent_guides_exclude_filetypes=['help', 'nerdtree']

" coc-flutter
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"

" =====
" Theme
" =====
colorscheme dracula
" Use <C-l> for trigger snippet expand.
set number
