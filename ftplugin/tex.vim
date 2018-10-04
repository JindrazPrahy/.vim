"Ohledně Latex suite
imap <buffer> ° <Plug>Tex_InsertItemOnThisLine

"Technikálie
syntax on

:inoremap <silent> <c-j> <esc>/<++><cr>gns

"A Function to quickly create \begin and \end constructions (using stuff from
"my .vimrc)
:function! MakeEnv(...)
:let dicccionary={
\ '3' : 'itemize',
\ '4' : 'align*'
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
:endfunction
:inoremap <buffer> <F2> <esc>:call MakeEnv()<CR>O

"Česká jazyková makra 
:inoremap zr<space><space> zrychlení
:inoremap ry<space><space> rychlost
:inoremap pe<space><space> period
:inoremap pů<space><space> působ

"Fyzikální makra
:inoremap \eu \mathrm{e}
:inoremap \cc \mathrm{c}
:inoremap \G \mathrm{G}
:inoremap \ii \mathrm{i}
:inoremap \jj \mathrm{j}

"Latex příkazy
:inoremap \geometry \usepackage[top=2cm,bottom=2cm,left=2cm,right=2cm]{geometry}
:inoremap \s<CR> \section{}<++><esc>4hi
:inoremap \ss<CR> \subsection{}<++><esc>4hi
:inoremap \sss<CR> \subsubsection{}<++><esc>4hi
:inoremap \e<CR> \begin{equation*}<CR>\begin{split}<CR><CR>\end{split}<CR>\end{equation*}<++><esc>kki
:inoremap \ni \noindent
:inoremap frac \frac{}{<+2+>}<++><esc>11hi

"Compilation
:nnoremap <Leader>xl :!xelatex % <CR><CR>
:nnoremap <Leader>kl :!pdflatex -interaction=nonstopmode % 
:nnoremap <Leader>ll :!pdflatex % <CR>
:nnoremap <Leader>lv :!evince %:r.pdf & <CR><space>
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
:inoremap `ph \phi 
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
:inoremap `Ph \Phi 
:inoremap `C \Chi 
:inoremap `Ps \Psi 
:inoremap `O \Omega 
:inoremap `L \Lambda 

