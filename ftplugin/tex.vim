"Temp
:nnoremap <Leader>tt :%s/ \\hline//g<cr>:%s/<bar>//g<cr>:%s/“/"/g<cr>:%s/\\hline/\\toprule/g<cr>


"Features
:let g:EnableCzechWordCheck= 1
:let  g:EnableCalculator= 1
:so ~/.vim/jindra/features.vim

"Conceal
:set conceallevel=2
":set concealcursor=ni
:let g:tex_conceal="abdgm"




"Latex Templates
:nnoremap <leader>sta :so ~/.vim/jindra/latextemplates.vim <CR> :e<CR>

"Ohledně Latex suite
imap <buffer> ° <Plug>Tex_InsertItemOnThisLine

"Technikálie
syntax on

"Jumper
:inoremap <C-j> <esc>/<++><Enter>"_c4l
:nnoremap <C-j> <esc>/<++><Enter>"_c4l

"A Function to quickly create \begin and \end constructions (using stuff from
"my .vimrc)
:function! MakeEnv(...)
"A list of shortcuts
:let dicccionary={
\ 'i' : 'itemize',
\ 'a' : 'align*',
\ 'm' : 'align',
\ 'e' : 'enumerate'
\ }
if a:0>=1
:call DuplicateAndSurround('Enter environment name:','\begin{','}','\end{','}',get(a:,1,0))
else
let name=GetLineInput('Enter environment name:')
for [key, val] in items(dicccionary)
if name == key
:let name = val
:echo name
break
endif
endfor
:call DuplicateAndSurround('Enter environment name:','\begin{','}','\end{','}',name)
endif
normal kkddj
:endfunction
:inoremap <buffer> <F2> <esc>:call MakeEnv()<CR>O

"Itemize
:inoremap `` \item

"Česká jazyková makra 
:inoremap zr<space><space> zrychlení
:inoremap ry<space><space> rychlost
:inoremap pe<space><space> period
:inoremap pů<space><space> působ

"Fyzikální makra
:inoremap \eu \mathrm{e}
:inoremap \cc \mathrm{c}
:inoremap \hh \mathrm{h}
:inoremap \GG \mathrm{G}
:inoremap \ii \mathrm{i}
:inoremap \jj \mathrm{j}

"Latex příkazy
:inoremap \geometry \usepackage[top=2cm,bottom=2cm,left=2cm,right=2cm]{geometry}
:inoremap \s<CR> \section{}<cr><++><esc>kela
:inoremap \ss<CR> \subsection{}<cr><++><esc>kela
:inoremap \sss<CR> \subsubsection{}<cr><++><esc>kela
:inoremap \e<CR> \begin{equation*}<CR>\begin{split}<CR><CR>\end{split}<CR>\end{equation*}<++><esc>kki
:inoremap \ni \noindent
:inoremap frc \frac{}{<++>}<++><esc>10hi
:inoremap ,)) \left( \right)<esc>6hi
:nnoremap vv diwi\vect{<esc>pa}<esc>
:nnoremap HH diwi\hat{<esc>pa}<esc>
:nnoremap ,o diwi\overline{<esc>pa}<esc>




":inoremap 0 0<esc>hi<cr><esc>lli<cr><esc>k:silent! s/\a/&_<cr>0i<backspace><esc>A<del>
":inoremap 0 0<esc>hma"d2xo<esc>"dp:silent! s/\a/&_<cr>$v0"dx`a"dpjdd`alli
:inoremap fx f(x)
:inoremap fx0 f(x_0)
:inoremap gx g(x)
:inoremap gx0 g(x_0)
:inoremap pi2 \frac{\pi}{2}


"Compilation
:nnoremap <Leader>xl :!xelatex % <CR><CR>
:nnoremap <Leader>kl :!pdflatex -interaction=nonstopmode % 
:nnoremap <Leader>ll :!pdflatex % <CR>
:nnoremap <Leader>bt :!bibtex %:r <CR>
:nnoremap <Leader>lv :!xdg-open %:r.pdf &>/dev/null &<CR><space>
:nnoremap <Leader>ev :!evince %:r.pdf &>/dev/null &<CR><space>
"Word count
:nnoremap <Leader>w :!pdftotext %:r.pdf - \| tr -d '.' \| wc -w <CR>
"A Programme for automatic insertion of ~s
:nnoremap <Leader>vl :!fks-vlnka.sh % <cr> :e<cr>


"Greek letters macros
:inoremap `a \alpha
:inoremap `b \beta
:inoremap `g \gamma
:inoremap `d \delta
:inoremap `ep \epsilon
:inoremap `z \zeta
:inoremap `e \eta
:inoremap `th \theta
:inoremap `i \iota
:inoremap `k \kappa
:inoremap `m \mu
:inoremap `n \nu
:inoremap `x \xi
:inoremap `p \pi
:inoremap `r \rho
:inoremap `s \sigma
:inoremap `t \tau
:inoremap `u \upsilon
:inoremap `f \phi
:inoremap `c \chi
:inoremap `ps \psi
:inoremap `o \omega
:inoremap `l \lambda

:inoremap `A \Alpha
:inoremap `B \Beta
:inoremap `G \Gamma
:inoremap `D \Delta
:inoremap `Ep \Epsilon
:inoremap `Z \Zeta
:inoremap `E \Eta
:inoremap `Th \Theta
:inoremap `I \Iota
:inoremap `K \Kappa
:inoremap `M \Mu
:inoremap `N \Nu
:inoremap `X \Xi
:inoremap `P \Pi
:inoremap `R \Rho
:inoremap `S \Sigma
:inoremap `T \Tau
:inoremap `U \Upsilon
:inoremap `F \Phi
:inoremap `C \Chi
:inoremap `Ps \Psi
:inoremap `O \Omega
:inoremap `L \Lambda

