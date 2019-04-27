:nnoremap <leader>ll :!g++ % -o %:r<cr>
:nnoremap <leader>kl :!x86_64-w64-mingw32-gcc %
:nnoremap <leader>lv :!clear;./%:r <cr>


"Tabs
:set noexpandtab
:set shiftwidth=4
:set tabstop=4
:set softtabstop=4

:inoremap \newfile 
\#include <iostream><CR>
\<CR>
\int main() {<CR>
\}
\<esc>O<tab>

