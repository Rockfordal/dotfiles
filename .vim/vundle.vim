set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
if has('gui')
  " Bundle 'CSApprox'
endif

Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
" Bundle 'airblade/vim-gitgutter'
Bundle 'gitv'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tsaleh/vim-matchit'

" Filformat och Syntax
  Bundle 'vim-coffee-script'
  Bundle 'slim-template/vim-slim'
  Bundle 'tpope/vim-cucumber'
  Bundle 'tpope/vim-haml'
  Bundle 'othree/html5.vim'
  Bundle 'ZenCoding.vim'

  " Bundle 'xenoterracide/html.vim'
  Bundle 'juvenn/mustache.vim'
  Bundle 'robgleeson/hammer.vim'
  " Bundle 'tpope/vim-markdown'
  Bundle 'timcharper/textile.vim'
  " Bundle 'puppetlabs/puppet-syntax-vim'

" Exekvera
  Bundle 'thoughtbot/vim-rspec'
  " Bundle 'skalnik/vim-vroom'
  " ruby_runner
  Bundle 'tpope/vim-dispatch'
  " Bundle 'Conque-Shell'

" Sök
  Bundle 'rking/ag.vim'
  Bundle 'greplace.vim'

" Autocomplete
  Bundle 'ctags.vim'

" Hopp
  Bundle 'Shougo/neocomplcache'

" snippets
  Bundle 'mattn/gist-vim'
  Bundle 'Shougo/neosnippet.vim'
  " Bundle 'snipMate'
  " Bundle 'scratch'

" Markera
  " Bundle 'textobj-user'
  " Bundle 'nelstrom/vim-textobj-rubyblock'

" sällan
  Bundle 'danro/rename.vim'
  Bundle 'marvim'
  Bundle 'tpope/vim-unimpaired'
  Bundle 'tpope/vim-repeat'
  Bundle 'tpope/vim-speeddating'
  " Bundle 'scrooloose/nerdtree'

" verkar slöa ner
  " Bundle 'tpope/vim-git'
  " Bundle 'scrooloose/syntastic'

" otestat:
  " Bundle 'kana/vim-smartinput'
  " Bundle 'ervandew/supertab'
  " Bundle 'ecomba/vim-ruby-refactoring'
  " Bundle 'rubycomplete.vim'

  " Bundle 'css_color'
  " Bundle 'croaky/vim-colors-github'
  " tmux
  " Bundle 'jgdavey/vim-turbux'
  " Bundle 'jgdavey/tslime.vim'

" onödigt:
  " Bundle 'trailing-whitespace'
  " Bundle 'tpope/vim-abolish'
  " Bundle 'nathanaelkane/vim-indent-guides'
  " Bundle 'Command-T'
  " Bundle 'sickill/vim-pasta'
  " Bundle 'Solarized'
  " Bundle 'nanki/treetop.vim' "gramatik analys

" paj
  " Bundle 'rstacruz/sparkup.git'

filetype plugin indent on
