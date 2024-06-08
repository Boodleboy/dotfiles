" show the line number of the current line and the relative number of other lines
set number relativenumber  

" highlights syntax
syntax enable 

" set tab behavior. I don't understand the difference between these
set tabstop=4
set softtabstop=4
set shiftwidth=4

set textwidth=80

" tab inserts 4 spaces instead of a tab character
" set expandtab 

" enables filetype detection
" filetype indent on 

set mouse=a " use mouse

" no line numbers on terminal
autocmd TermOpen * setlocal nonumber norelativenumber

filetype on

" Start plugin manager
call plug#begin('~/.config/vim/plugins')

nnoremap <C-LeftMouse> <LeftMouse>:LspDefinition<Enter>

" async stuff
Plug 'neomake/neomake'

" surrounding things 
Plug 'tpope/vim-surround'

" Handle dates better
Plug 'tpope/vim-speeddating'

" Comments
Plug 'tpope/vim-commentary'

" Automatic endings for brackets and such
Plug 'tpope/vim-endwise'

" Vim wiki
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'michal-h21/vim-zettel'

" NERDTree file viewer
Plug 'preservim/nerdtree'

" LF plugin
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'

" Show open buffers
" Plug 'fholgado/minibufexpl.vim'

" vim window manager
Plug 'paroxayte/vwm.vim'

" langauge server protocol client
"Plug 'prabirshrestha/vim-lsp'


" EXPERIMENTAL: MIGHT REMOVE

call plug#end()

" Register ccls C++ lanuage server.
"if executable('ccls')
"   au User lsp_setup call lsp#register_server({
"      \ 'name': 'ccls',
"      \ 'cmd': {server_info->['ccls']},
"      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"      \ 'initialization_options': {'cache': {'directory': expand('~/.cache/ccls') }},
"      \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"      \ })
"endif

" Define wiki
let wiki = {}
let wiki.path = '~/notes/vimwiki'
let wiki.syntax = 'markdown'

let g:vimwiki_list = [wiki]
