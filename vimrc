execute pathogen#infect()
filetype plugin indent on
syntax on

colorscheme gruvbox
set background=dark

set sw=4 sts=4 et

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Defined as per https://jeffkreeftmeijer.com/vim-number/

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

