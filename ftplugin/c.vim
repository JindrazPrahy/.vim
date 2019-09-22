:nnoremap <leader>ll :!gcc % 
:nnoremap <leader>kl :!x86_64-w64-mingw32-gcc %
:nnoremap <F2> :!gcc %  <cr>
:nnoremap <F3> :!gcc % && clear ; ./a.out<cr>
:nnoremap <F4> :!clear;./a.out <cr>

:nnoremap <f5> :!gcc % -lm -DMKL_ILP64 -m64 -I${MKLROOT}/include -L ${MKLROOT}/lib/intel64/libmkl_scalapack_ilp64.a -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_cdft_core.a ${MKLROOT}/lib/intel64/libmkl_intel_ilp64.a ${MKLROOT}/lib/intel64/libmkl_intel_thread.a ${MKLROOT}/lib/intel64/libmkl_core.a ${MKLROOT}/lib/intel64/libmkl_blacs_intelmpi_ilp64.a -Wl,--end-group -liomp5 -lpthread -lm -ldl <cr>

"Tabs
:set noexpandtab
:set shiftwidth=8
:set tabstop=8
:set softtabstop=8



:inoremap <leader>start 
\ #include <stdio.h><cr>
\<cr>
\<cr>
\<cr>
\int main() {<cr>
\printf("Hello world!");<cr>
\<cr>
\}<esc>kkO
