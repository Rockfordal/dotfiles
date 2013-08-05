" Make the top match be at the top
let g:ctrlp_match_window_reversed = 1

" Results shown
let g:ctrlp_max_height = 10

" Lets use git to figure out what files you have
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co']
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard', 'find %s -type f']

" Only use the nearest parent dir with a .git folder
let g:ctrlp_working_path_mode = 'r'

"    \ 'dir':  '\v[\/]\.(cache)$',
"    \ 'file': '\v\.(so|log)$' }
"
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\txt$\|\public$\|\vendor$\|\tmp$\|\tinymce$\|\ui$',
"   \ 'file': '\.min.js$\|\.gz$\|\.dll$',
"   \ 'link': 'some_bad_symbolic_links' }

let g:ctrlp_custom_ignore = '\coverage\|\.git$\|txt\|\public$\|tiny_mce\|fonts\|.gif\|.png\|.jpg\|vendor'
" map <Leader>p :CtrlP<CR>

" Sök inte igenom onödiga filer
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz,*.min.js,*.log
set wildignore+=/txt/*,public/*,/log/*,public/assets/*,app/assets/images/*

" " Ignore vendored shit
" set wildignore+=vendor/gems/*
" set wildignore+=vendor/gem/*
" set wildignore+=vendor/cache/*
" set wildignore+=tmp/*
