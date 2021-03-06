" tcomment
let g:tcommentMapLeaderOp1 = '<Leader>c'

" vim_markdown
let g:vim_markdown_folding_disabled=1

" vim_flavored_markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" NERDTree
let g:loaded_netrw = 1                      " Disable netrw
let g:loaded_netrwPlugin = 1                " Disable netrw
let g:NERDTreeHijackNetrw = 0               " Hijack netrw
let g:NERDTreeShowLineNumbers = 0           " Disable line numbers
let g:NERDTreeMinimalUI = 1                 " Disable help message
let g:NERDTreeDirArrows = 1                 " Enable directory arrows
let g:syntastic_check_on_open = 1           " Enable syntastic

" use special powerline font
let g:Powerline_symbols = 'fancy'

" unite searching stuff
if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  " Use ack in unite grep source.
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts =
  \ '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

runtime macros/matchit.vim
