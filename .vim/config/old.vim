""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC TARGETS AND FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function! ShowRoutes()
"   " Requires 'scratch' plugin
"   :topleft 100 :split __Routes__
"   " Make sure Vim doesn't write __Routes__ as a file
"   :set buftype=nofile
"   " Delete everything
"   :normal 1GdG
"   " Put routes output in buffer
"   :0r! rake -s routes
"   " Size window to number of lines (1 plus rake output length)
"   :exec ":normal " . line("$") . "_ "
"   " Move cursor to bottom
"   :normal 1GG
"   " Delete empty trailing line
"   :normal dd
" endfunction

" Clear the search buffer when hitting return
" function! MapCR()
"   nnoremap <cr> :nohlsearch<cr>
" endfunction
" call MapCR()
" nnoremap <leader><leader> <c-^>

" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<tab>"
"     else
"         return "\<c-p>"
"     endif
" endfunction
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-n>

" Show the MD5 of the current buffer
" command! -range Md5 :echo system('echo '.shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

" OpenChangedFiles COMMAND
" Open a split for each dirty file in git
" function! OpenChangedFiles()
"   only " Close all windows, unless they're modified
"   let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
"   let filenames = split(status, "\n")
"   exec "edit " . filenames[0]
"   for filename in filenames[1:]
"     exec "sp " . filename
"   endfor
" endfunction
" command! OpenChangedFiles :call OpenChangedFiles()

" Insert Hashrocket
" imap <c-l> <space>=><space>

" Filer
" map <leader>gr :topleft :split config/routes.rb<cr>
" map <leader>gg :topleft 100 :split Gemfile<cr>

" map <leader>y "*y
" map <leader>j :split %%
"
" Can't be bothered to understand ESC vs <c-c> in insert mode
" imap <c-c> <esc>

" Vet ej
"set rtp+=~/.vam/vim-addon-manager
"call vam#ActivateAddons(["FuzzyFinder"])
" set foldmethod=syntax

" Show syntax highlighting groups for word under cursor
" nmap <C-S-P> :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc

" STATUS LINE (hanteras av powerline)
" set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" kill trailing spaces when exiting file
" autocmd BufWritePre * :%s/\s\+$//e


" inom augroup:
  " Indent p tags
  " autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

  "for ruby, autoindent with two spaces, always expand tabs
  " autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  " autocmd FileType python set sw=4 sts=4 et
  " autocmd BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:&gt;
  " autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:&gt;
  "
  autocmd InsertLeave * set iminsert=0 " Kill capslock when leaving insert mode

