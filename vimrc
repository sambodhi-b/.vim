set nocompatible

" =============================================================================
"                             Setting up Pathogen
" =============================================================================
execute pathogen#infect()

" =============================================================================
"                              Common Settings
" =============================================================================
syntax on
" Indentation Settings
filetype plugin indent on
set shiftwidth=4 softtabstop=4 expandtab

" Defined as per https://jeffkreeftmeijer.com/vim-number/
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Colors
colorscheme gruvbox
set background=dark

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Keyboard Shortcut Mappings
map <C-n> :NERDTreeToggle<CR>

" Search Options
set incsearch
set hlsearch
nmap ,hl :nohls<CR>

" Folding Options
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" =============================================================================
"                               Python Specific
" =============================================================================
autocmd Filetype python setlocal
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set encoding=utf-8
    \ set omnifunc=pythoncomplete#Complete
    \ match BadWhitespace /\s\+$/


" =============================================================================
"                                YAML Specific
" =============================================================================
autocmd Filetype yaml setlocal shiftwidth=2 softtabstop=2 expandtab

