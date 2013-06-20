" Färger
set t_Co=256
set background=dark
" let g:solarized_termtrans=1
let ruby_operators = 1 " Highlight ruby operators
let g:clj_paren_rainbow = 1 " Paren Rainbow (diff colors for diff nestings)
let g:clj_dynamic_highlighting = 1 " Auto added used namespaces, generally be awesome
let g:solarized_contrast='high'
let g:solarized_visibility='high'
let g:solarized_italic=0
let g:solarized_termcolors= &t_Co
let g:Powerline_colorscheme='solarized256_dark'
let g:Powerline_theme='long'
let g:syntastic_check_on_open=1
" let g:rails_statusline = 0 " Turn off rails bits of statusbar

" Indent guides
" set ts=4 sw=4 et
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
set ts=4 sw=4 noet

let g:rspec_command = "Dispatch zeus rspec {spec}" " Snabba test

let g:Powerline_symbols = 'fancy'
let $pd = getcwd()
set fillchars+=stl:\ ,stlnc:\

call togglebg#map("<F6>")
match Error /\%80v.\+/

if has("gui_running")
  set antialias
  set vb t_vb= " No bell
  set guicursor=a:blinkon0 " Don't flick cursor
  highlight clear SignColumn " match SignColumn with bg for vim-gitgutter..
  " set transparency=0

  set guioptions-=T  " Hide toolbar
  set guioptions-=m  " Hide menu
  set guioptions-=rL " Scrollbar off
  set guioptions+=c  " use console dialog rather than popup dialog

  if has("mac")
    set guioptions+=e " Enable gui tab labels for mac
  else
    set guioptions-=e " Disable for linux
  endif

  " color github256
  "  highlight NonText guibg=#060606
  "  highlight Folded  guibg=#0A0A0A guifg=#9090D0

  color solarized

  " Gitv
  highlight diffAdded   guifg=#00bf00 guibg=#9cf9b1
  highlight diffRemoved guifg=#bf0000 guibg=#ffa296

  " color paper/mayansmoke
  " color white/espresso-soda
  " color krunktastic
  " color white/summerfruit
  " color white/summerfruit256
  " vy
  " color paper/newspaper
  " color white/tomorrow
  " color white/fluidvision
  " color white/reliable
  " color paper/peachpuff

  " color brown/vilight   "js sass
  " color brown/twilight  "html
  " color railscasts      "ctrl
  " color grey/xoria256
  " color red/tetragrammaton
  " color black/synic
else
  set lines=30
  color solarized
  " color white/pyte2
  " color brown/hybrid
  " color codeschool
  " color black/grb256
endif

" öppna filer
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Get off my lawn
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" The_silver_searcher
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Rails
map <leader>gm :Rmodel<CR>
map <leader>gc :Rcontroller<CR>
map <leader>gv :Rview<CR>
map <leader>gl :Gitv<CR>
map <leader>gs :Gstatus<CR>
map <leader>bb :Bundle<CR>
" map <leader>bu :BundleUpdate<CR>

" Rspec
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

map <leader>dd :edit config/database.yml<cr>
map <leader>de :edit config/environments/development.rb<cr>
map <leader>pe :edit config/environments/production.rb<cr>
map <leader>gr :edit config/routes.rb<cr>
map <leader>gR :call ShowRoutes()<cr>
map <leader>gg :tabnew Gemfile<cr>
map <leader>f :Ack<Space>

map <leader>e :edit %%
map <leader>v :view %%
map <leader>h :vnew %%

" Session management
nmap <F2> :mksession! ~/.vim_session <CR> " save
nmap <F3> :source ~/.vim_session <CR>     " load

" Newtab
map <silent> <C-n> :tabnew<CR>

" Insert Current time
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>

" Add whitespace inside of braces
nnoremap <Leader>{ :%s/{\([^ ]\)/{ \1/gc<CR>
nnoremap <Leader>} :%s/\([^ ]\)}/\1 }/gc<CR>

" Insert Hashrocket
imap <c-l> <space>=><space>

set tags=./../.git/tags,./tmp/tags,tags " Ctags

" Relative numbers
if version >= 703
  set relativenumber
  autocmd InsertEnter * :set number
  autocmd InsertLeave * :set relativenumber
else
  set number
endif

if has("autocmd")
  augroup vimrcEx " Put these in an autocmd group, so that we can delete them easily.
  au!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  autocmd BufWinEnter,WinEnter * setlocal cursorline
  autocmd BufWinLeave,WinLeave * setlocal nocursorline

  autocmd BufWinEnter,WinEnter * setlocal colorcolumn=80
  autocmd BufWinLeave,WinLeave * setlocal colorcolumn=0

  autocmd BufWinEnter,WinEnter * setlocal cursorcolumn
  autocmd BufWinLeave,WinLeave * setlocal nocursorcolumn

  autocmd BufWinLeave * call clearmatches()
  autocmd BufNewFile,BufRead *.thor set filetype=ruby
  autocmd BufNewFile,BufRead *.mustache set filetype=mustache
  autocmd BufNewFile,BufRead *.gemfile set filetype=ruby
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee
  autocmd BufNewFile,BufRead *.md set filetype=markdown
  autocmd BufNewFile,BufRead *.ejs set filetype=html
  autocmd BufNewFile,BufRead *.scss set filetype=scss
  autocmd BufNewFile,BufRead *.ru set filetype=ruby
  autocmd BufNewFile,BufRead *.slim set filetype=slim
  autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
  autocmd BufNewFile,BufRead Guardfile setlocal filetype=ruby
  " autocmd BufNewFile,BufRead Appraisals setlocal filetype=ruby

  autocmd FileType text,markdown setlocal textwidth=78

  " Don't syntax highlight markdown because it's often wrong
  autocmd! FileType mkd setlocal syn=off

  " turn syntax highlighting on all the friggin' time;
  " chars > 80 always gethighlighted
  autocmd BufRead,BufNewFile * :syntax on

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  autocmd FileType slim set commentstring=/\ %s

  " Leave the return key alone when in command line windows
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()

  augroup END
else
  set autoindent
endif
