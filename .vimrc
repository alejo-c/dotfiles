"  _   _                 _            
" | \ | | ___  _____   _(_)_ __ ___   
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  
" | |\  |  __/ (_) \ V /| | | | | | | 
" |_| \_|\___|\___/ \_/ |_|_| |_| |_| 
"                                     
" ----------------------------------------------------- 

" Add line numbers
set number
set relativenumber
set autoread

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
" filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=5

" Set Mouse support
set mouse=a

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

if has("vi") || has("termguicolors")
  let &t_SI = "\e[5 q" " Insert mode: beam cursor
  let &t_SR = "\e[4 q" " Replace mode: underline cursor
  let &t_EI = "\e[2 q" " Normal mode: block cursor
  let &t_ti .= "\e[2 q" " Normal mode: block cursor when entering Vim
  let &t_te .= "\e[5 q" " Restore beam cursor when exiting Vim
endif

augroup RestoreCursorShape
  autocmd!
  autocmd VimLeave * set guicursor=a:ver25-blinkon1
augroup END
