:augroup noextension
:	autocmd!
:	autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=noextension | endif
:augroup END

