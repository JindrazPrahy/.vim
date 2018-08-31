"Ohledně Latex suite
imap <buffer> ° <Plug>Tex_InsertItemOnThisLine

"Technikálie
syntax on

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

"Kompilace
:nnoremap \fvl :!fks-vlnka.sh % <CR>
:nnoremap \vl :!vlna % <CR>
:nnoremap \xl :!xelatex % <CR><CR>
:nnoremap \kl :!pdflatex -interaction=nonstopmode % 


"Makra na řecká písmena
:inoremap <space>al<space> <space>\alpha 
:inoremap <space>bt<space> <space>\beta 
:inoremap <space>ga<space> <space>\gamma 
:inoremap <space>dl<space> <space>\delta 
:inoremap <space>ep<space> <space>\epsilon 
:inoremap <space>zt<space> <space>\zeta 
:inoremap <space>et<space> <space>\eta 
:inoremap <space>th<space> <space>\theta 
:inoremap <space>io<space> <space>\iota 
:inoremap <space>ka<space> <space>\kappa 
:inoremap <space>mu<space> <space>\mu 
:inoremap <space>nu<space> <space>\nu 
:inoremap <space>xi<space> <space>\xi 
:inoremap <space>pi<space> <space>\pi 
:inoremap <space>rh<space> <space>\rho 
:inoremap <space>sg<space> <space>\sigma 
:inoremap <space>tau<space> <space>\tau 
:inoremap <space>up<space> <space>\upsilon 
:inoremap <space>ph<space> <space>\phi 
:inoremap <space>ch<space> <space>\chi 
:inoremap <space>ps<space> <space>\psi 
:inoremap <space>om<space> <space>\omega 
:inoremap <space>la<space> <space>\lambda 

:inoremap <space>Al<space> <space>\Alpha 
:inoremap <space>Bt<space> <space>\Beta 
:inoremap <space>Ga<space> <space>\Gamma 
:inoremap <space>Dl<space> <space>\Delta 
:inoremap <space>Ep<space> <space>\Epsilon 
:inoremap <space>Zt<space> <space>\Zeta 
:inoremap <space>Et<space> <space>\Eta 
:inoremap <space>Th<space> <space>\Theta 
:inoremap <space>Io<space> <space>\Iota 
:inoremap <space>Ka<space> <space>\Kappa 
:inoremap <space>Mu<space> <space>\Mu 
:inoremap <space>Nu<space> <space>\Nu 
:inoremap <space>Xi<space> <space>\Xi 
:inoremap <space>Pi<space> <space>\Pi 
:inoremap <space>Rh<space> <space>\Rho 
:inoremap <space>Sg<space> <space>\Sigma 
:inoremap <space>Tau<space> <space>\Tau 
:inoremap <space>Up<space> <space>\Upsilon 
:inoremap <space>Ph<space> <space>\Phi 
:inoremap <space>Ch<space> <space>\Chi 
:inoremap <space>Ps<space> <space>\Psi 
:inoremap <space>Om<space> <space>\Omega 
:inoremap <space>La<space> <space>\Lambda 

:inoremap <space>\al<space> <space>$\alpha $
:inoremap <space>\bt<space> <space>$\beta $ 
:inoremap <space>\ga<space> <space>$\gamma $
:inoremap <space>\dl<space> <space>$\delta $
:inoremap <space>\ep<space> <space>$\epsilon $
:inoremap <space>\zt<space> <space>$\zeta $
:inoremap <space>\et<space> <space>$\eta $
:inoremap <space>\th<space> <space>$\theta $
:inoremap <space>\io<space> <space>$\iota $
:inoremap <space>\ka<space> <space>$\kappa $
:inoremap <space>\mu<space> <space>$\mu $
:inoremap <space>\nu<space> <space>$\nu $
:inoremap <space>\xi<space> <space>$\xi $
:inoremap <space>\pi<space> <space>$\pi $
:inoremap <space>\rh<space> <space>$\rho $
:inoremap <space>\sg<space> <space>$\sigma $
:inoremap <space>\tau<space> <space>$\tau $
:inoremap <space>\up<space> <space>$\upsilon $
:inoremap <space>\ph<space> <space>$\phi $
:inoremap <space>\ch<space> <space>$\chi $
:inoremap <space>\ps<space> <space>$\psi $
:inoremap <space>\om<space> <space>$\omega $
:inoremap <space>\la<space> <space>$\lambda $

:inoremap <space>\Al<space> <space>$\Alpha $
:inoremap <space>\Bt<space> <space>$\Beta $
:inoremap <space>\Ga<space> <space>$\Gamma $
:inoremap <space>\Dl<space> <space>$\Delta $
:inoremap <space>\Ep<space> <space>$\Epsilon $
:inoremap <space>\Zt<space> <space>$\Zeta $
:inoremap <space>\Et<space> <space>$\Eta $
:inoremap <space>\Th<space> <space>$\Theta $
:inoremap <space>\Io<space> <space>$\Iota $
:inoremap <space>\Ka<space> <space>$\Kappa $
:inoremap <space>\Mu<space> <space>$\Mu $
:inoremap <space>\Nu<space> <space>$\Nu $
:inoremap <space>\Xi<space> <space>$\Xi $
:inoremap <space>\Pi<space> <space>$\Pi $
:inoremap <space>\Rh<space> <space>$\Rho $
:inoremap <space>\Sg<space> <space>$\Sigma $
:inoremap <space>\Tau<space> <space>$\Tau $
:inoremap <space>\Up<space> <space>$\Upsilon $
:inoremap <space>\Ph<space> <space>$\Phi $
:inoremap <space>\Ch<space> <space>$\Chi $
:inoremap <space>\Ps<space> <space>$\Psi $
:inoremap <space>\Om<space> <space>$\Omega $
:inoremap <space>\La<space> <space>$\Lambda $

