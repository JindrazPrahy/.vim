:augroup noextension
:	autocmd!
:	autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set ft=noextension | endif
:augroup END

