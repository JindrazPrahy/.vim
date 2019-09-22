:nnoremap <leader>ll :!g++ % -o %:r<cr>
:nnoremap <leader>kl :!x86_64-w64-mingw32-gcc %
:nnoremap <leader>lv :!clear;./%:r <cr>
:nnoremap <F2> :!g++ % -o %:r<cr>
:nnoremap <F3> :!g++ % -o %:r && clear;./%:r<cr>
:nnoremap <F4> :!clear;./%:r <cr>
:nnoremap <f5> :!g++ % -lm -DMKL_ILP64 -m64 -I${MKLROOT}/include -L ${MKLROOT}/lib/intel64/libmkl_scalapack_ilp64.a -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_cdft_core.a ${MKLROOT}/lib/intel64/libmkl_intel_ilp64.a ${MKLROOT}/lib/intel64/libmkl_intel_thread.a ${MKLROOT}/lib/intel64/libmkl_core.a ${MKLROOT}/lib/intel64/libmkl_blacs_intelmpi_ilp64.a -Wl,--end-group -liomp5 -lpthread -lm -ldl <cr>


"Tabs
:set noexpandtab
:set shiftwidth=8
:set tabstop=8
:set softtabstop=8

:inoremap \newfile 
\#include <iostream><CR>
\<CR>
\int main() {<CR>
\}
\<esc>O<tab>

