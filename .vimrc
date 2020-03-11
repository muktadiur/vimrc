
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

set path+=**

" Display all matching files when we tab complete 
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/migrations/**

let g:netrw_list_hide = '__pycache__/'

" Tweaks for browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_winsize=25
let g:netrw_preview=1

autocmd FileType netrw setl bufhidden=delete " or use :qa!

" Create the `tags` file
command! MakeTags !ctags -R .

filetype off
filetype plugin indent on
syntax on

set number

set mouse=n
" set ttymouse=xterm2

nmap <F5> gh


" Hide the hidden files
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex


" Search
set incsearch
set hlsearch
