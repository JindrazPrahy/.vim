"Kompilace
:nnoremap \ll :!mptopdf % <CR><CR>
:nnoremap \lv :!xdg-open 

"Plotování funkcí
:inoremap \axes numeric xmax ymax; %Deklarace proměnných<cr>xmax := 6; ymax := 1; %Poměrná velikost os<cr>path axex; path axey;<cr>axex = (-0.25*xmax,0)*u -- (xmax,0)*u;   %Rozsah osy x<cr>axey = (0,-1*ymax)*u -- (0,ymax)*u;      %Rozsah osy y<cr>label.bot(btex $x$ etex, (0.9xmax,0)*u);<cr>label.lft(btex $y$ etex, (0,0.9ymax)*u);<cr>drawarrow axex; drawarrow axey;<cr>
 
:inoremap \plot xstep := 1; <cr>vardef f(expr x) = sind(x) enddef; <cr>path funkce; <cr>funkce := (1.57*xmin/90,f(xmin))*u <cr>    for x=xmin+xstep step xstep until 355: <cr>..(1.57*x/90,f(x))*u <cr>endfor; <cr>draw funkce;


"na start
:inoremap zacni u:=1cm;<cr>pickup pencircle scaled 0.05u;<cr>def k (expr s, r) =<cr>draw fullcircle scaled r shifted s;<cr>enddef;<cr>def uhel (expr uhel, delka, pocatek, pj, pd ) =<cr>path kmakro;<cr>kmakro:= fullcircle scaled delka shifted pocatek;<cr>pair bodjednamakro; pair boddvamakro; pair bodtrimakro;<cr>bodjednamakro:= pj intersectionpoint kmakro;<cr>boddvamakro:= pd intersectionpoint kmakro;<cr>bodtrimakro:= boddvamakro rotatedaround(pocatek,uhel/2);<cr>draw bodjednamakro .. bodtrimakro .. boddvamakro;<cr>enddef;<cr><cr><cr>beginfig()<cr><cr><cr><++><cr><cr><cr>endfig;<cr><cr><cr>end<esc>/fig<cr>ela

"makra na dlouhé příkazy
:inoremap inters intersectionpoint 
:inoremap ori origin 


