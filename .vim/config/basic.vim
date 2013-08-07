" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set noswapfile

" Softtabs, 2 spaces (Thoughtbot)
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set laststatus=2
set showmatch
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=79

" This makes RVM work inside Vim. I have no idea why.
set shell=bash

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" keep more context when scrolling off the end of a buffer
set scrolloff=3

" Store temporary files in a central spot
"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set nobackup
set nowritebackup

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" display incomplete commands
set showcmd

" use emacs-style tab completion when selecting files, etc
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set lazyredraw " rita inte om skärmen i onödan

set encoding=utf-8

" Clayton
set list listchars=tab:»·,trail:·
set clipboard=unnamed
set completeopt=longest,menu
set complete=.,w,b,u,t
set wildmode=longest,list:longest

" vi vill kunna ändra första delen av tex: phone_params
set iskeyword-=_
