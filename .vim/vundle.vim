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
Bundle 'airblade/vim-gitgutter'
Bundle 'gitv'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tsaleh/vim-matchit'

" Filformat och Syntax
  Bundle 'vim-coffee-script'
  Bundle 'slim-template/vim-slim'
  " Bundle 'tpope/vim-haml'
  " Bundle 'juvenn/mustache.vim'
  " Bundle 'robgleeson/hammer.vim'
  " Bundle 'tpope/vim-markdown'
  " Bundle 'timcharper/textile.vim'
  " Bundle 'puppetlabs/puppet-syntax-vim'
  " Bundle 'othree/html5.vim'
  " Bundle 'xenoterracide/html.vim'

" Exekvera
  Bundle 'thoughtbot/vim-rspec'
  " Bundle 'skalnik/vim-vroom'
  " ruby_runner
  Bundle 'tpope/vim-dispatch'
  " Bundle 'Conque-Shell'

" Sök
  Bundle 'rking/ag.vim'
  " Bundle 'greplace.vim'

" Autocomplete
  Bundle 'ctags.vim'

" Hopp
  Bundle 'Shougo/neocomplcache'

" snippets
  " Bundle 'Shougo/neosnippet.vim'
  " Bundle 'snipMate'

" Markera
  Bundle 'textobj-user'
  Bundle 'nelstrom/vim-textobj-rubyblock'

" sällan
  " Bundle 'danro/rename.vim'
  " Bundle 'marvim'
  " Bundle 'tpope/vim-cucumber'
  Bundle 'tpope/vim-unimpaired'
  " Bundle 'tpope/vim-repeat'
  " Bundle 'tpope/vim-speeddating'
  " Bundle 'scrooloose/nerdtree'
  " Bundle 'scratch'

" verkar slöa ner
  " Bundle 'tpope/vim-git'
  " Bundle 'scrooloose/syntastic'

" otestat:
  " Bundle 'mattn/gist-vim'
  " Bundle 'kana/vim-smartinput'
  " Bundle 'ervandew/supertab'
  " Bundle 'css_color'
  " Bundle 'croaky/vim-colors-github'
  " Bundle 'ecomba/vim-ruby-refactoring'
  " Bundle 'rubycomplete.vim'
  " tmux
  " Bundle 'jgdavey/vim-turbux'
  " Bundle 'jgdavey/tslime.vim'

" onödigt:
  " Bundle 'trailing-whitespace'
  " Bundle 'tpope/vim-abolish'
  " Bundle 'nathanaelkane/vim-indent-guides' " Stödlinjer för indentering
  " Bundle 'Command-T'
  " Bundle 'vim-scripts/tComment'
  " Bundle 'nanki/treetop.vim' "gramatik analys
  " Bundle 'sickill/vim-pasta'
  " Bundle 'Solarized'

" paj
  " Bundle 'rstacruz/sparkup.git'

filetype plugin indent on
