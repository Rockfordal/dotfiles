if $TMUX == ''
    set clipboard+=unnamed
endif

source ~/.vim/vundle.vim

for f in split(glob('~/.vim/config/*.vim'), '\n')
  exe 'source' f
endfor

" cd ~/rails/urdb19
