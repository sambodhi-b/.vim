" Set Tue Colors
" set termguicolors

" Install vim-plug if not available
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.vim/plugged')

" Colors!
Plug 'morhetz/gruvbox'

" Airline StatusLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-TOML
Plug 'cespare/vim-toml'

call plug#end()

" Set <leader> to ,
let mapleader = ","

" Global Indentation Settings
filetype plugin indent on
set shiftwidth=4 softtabstop=4 expandtab

" Line Numbering
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Set GruvBox Theme
colorscheme gruvbox
set background=dark

" Shortcut Key for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Settings AirLine Options
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

" Search Options
set incsearch
set hlsearch
nmap <leader>hl :nohls<CR>

" Settings for CoC
if filereadable(expand("~/.vim/coc-mappings.vim"))
  source ~/.vim/coc-mappings.vim
endif

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala
