"Compilation
:nnoremap <leader>ll :!mptopdf % <CR><CR>
:nnoremap <leader>lv :!inkview 

"A macro for function plotting
:inoremap \axes 
\numeric xmax ymax; %Deklarace proměnných
\xmax := 10; ymax := 10; %Poměrná velikost os
\path axex; path axey;
\axex = (-0.5*xmax,0)*u -- (0.5*xmax,0)*u;   %Rozsah osy x
\axey = (0,-0.5*ymax)*u -- (0,0.5ymax)*u;      %Rozsah osy y
\label.bot(btex $x$ etex, (0.48xmax,0)*u);
\label.lft(btex $y$ etex, (0,0.48ymax)*u);
\drawarrow axex; drawarrow axey;
\
\%Kreslení jednotek os
\for x=-0.5*xmax+ 0.1*xmax step 0.1*xmax until 0.5*xmax:
\draw (x,0.01*ymax)*u--(x,-0.01*ymax)*u;
\endfor;
\for y=-0.5*ymax+ 0.1*ymax step 0.1*ymax until 0.5*ymax:
\draw (0.01*xmax,y)*u--(-0.01*xmax,y)*u;
\endfor;

:inoremap \plot 
\xstep := 1;
\xmin  := -5;
\xmax  := 5;
\vardef f(expr x) = 2*x enddef;
\path funkce;
\funkce := (xmin,f(xmin))*u
\for x=xmin+xstep step xstep until xmax:
\..(x,f(x))*u
\endfor;
\draw funkce;



"Starting a file
:inoremap \s 
\u:=1cm;<cr>
\pickup pencircle scaled 0.05u;<cr>
\def k (expr s, r) =<cr>
\draw fullcircle scaled r shifted s;<cr>
\enddef;<cr>
\def uhel (expr uhel, delka, pocatek, pj, pd ) =<cr>
\path kmakro;<cr>
\kmakro:= fullcircle scaled delka shifted pocatek;<cr>
\pair bodjednamakro; pair boddvamakro; pair bodtrimakro;<cr>
\bodjednamakro:= pj intersectionpoint kmakro;<cr>
\boddvamakro:= pd intersectionpoint kmakro;<cr>
\bodtrimakro:= boddvamakro rotatedaround(pocatek,uhel/2);<cr>
\draw bodjednamakro .. bodtrimakro .. boddvamakro;<cr>
\enddef;<cr>
\<cr>
\<cr>
\beginfig()<cr>
\<cr>
\<cr>
\<cr>
\<cr>
\<cr>
\<cr>
\endfig;
\<cr>
\<cr>
\<cr>
\end
\<esc>/fig<cr>\ela

"makra na dlouhé příkazy
:inoremap inters intersectionpoint 
:inoremap ori origin 
