" show the line number of the current line and the relative number of other lines
set number relativenumber  

" highlights syntax
syntax enable 

" 4 spaces per tab when opening a file
set tabstop=8 

" 4 spaces per tab when editing a file
set softtabstop=8 

" tab inserts 4 spaces instead of a tab character
"set expandtab 

" enables filetype detection
" filetype indent on 

set mouse=a " use mouse

" Start plugin manager
call plug#begin('~/.config/nvim/plugins')

" async stuff
Plug 'neomake/neomake'

" surrounding things 
Plug 'tpope/vim-surround'

call plug#end()
