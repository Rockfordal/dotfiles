" Make the top match be at the top
let g:ctrlp_match_window_reversed = 1

" Show 25 results
let g:ctrlp_max_height = 10

" Lets use git to figure out what files you have
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co']

" Only use the nearest parent dir with a .git folder
let g:ctrlp_working_path_mode = 'r'

let g:ctrlp_custom_ignore = {
   \ 'dir':  '\v[\/]\.(git|hg|svn)$|public/*|txt/*|/assets/javascripts/tinymce/*|assets/javascripts/ui/*',
   \ 'file': '\v\.(exe|so|dll|.gz|.log|min.js)$',
   \ }
" let g:ctrlp_custom_ignore = 'vendor\|tmp'

" map <Leader>p :CtrlP<CR>

" Sök inte igenom onödiga filer
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz,*.min.js,*.log
set wildignore+=/txt/*,public/*,/log/*,public/assets/*,app/assets/images/*

" " Ignore vendored shit
" set wildignore+=vendor/gems/*
" set wildignore+=vendor/gem/*
" set wildignore+=vendor/cache/*
" set wildignore+=tmp/*
