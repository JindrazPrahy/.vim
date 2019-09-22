:set autoindent


:nnoremap <f5> :!xdotool search --name "Google Chrome" windowfocus --sync key Control_L+R && xdotool search --name "jin@Jin" windowfocus<cr><cr>
:nnoremap <f4> :!xdotool search --name "Google Chrome" windowfocus --sync key Control_L+F5 && xdotool search --name "jin@Jin" windowfocus<cr><cr>

:call matchdelete(100)

:inoremap <h1 <h1></h1><esc>4hi
:inoremap <h2 <h2></h2><esc>4hi
:inoremap <h3 <h3></h3><esc>4hi

:inoremap <p <p><cr></p><esc>O
:inoremap <a <a href="

:inoremap \c <esc>:set noautoindent<cr>a<figure><cr>
\	<pre><cr>
\	<code contenteditable spellcheck="false"><!--<cr>
\	--><!--<cr>
\	--></code><cr>
\	</pre><cr>
\</figure><esc>?!<cr>:set autoindent<cr>hi
:inoremap <code <code contenteditable spellcheck="false"></code><esc>6hi
:vnoremap <c s<code contenteditable spellcheck="false"></code><esc>7hp

:inoremap <img <center></center></br></br><esc>18hi<img src="./images/


:nnoremap <leader>sp :%s/\ a\ /\ a\&nbsp;/ge<cr>:%s/\ v\ /\ v\&nbsp;/ge<cr>:%s/\ u\ /\ u\&nbsp;/ge<cr>:%s/\ s\ /\ s\&nbsp;/ge<cr>:%s/\ z\ /\ z\&nbsp;/ge<cr>:%s/\ i\ /\ i\&nbsp;/ge<cr>:%s/\ k\ /\ k\&nbsp;/ge<cr>:%s/\ o\ /\ o\&nbsp;/ge<cr>
\:%s/\ta\ /\ta\&nbsp;/ge<cr>:%s/\tv\ /\tv\&nbsp;/ge<cr>:%s/\tu\ /\tu\&nbsp;/ge<cr>:%s/\ts\ /\ts\&nbsp;/ge<cr>:%s/\tz\ /\tz\&nbsp;/ge<cr>:%s/\ti\ /\ti\&nbsp;/ge<cr>:%s/\tk\ /\tk\&nbsp;/ge<cr>:%s/\to\ /\to\&nbsp;/ge<cr>

:nnoremap mm i$<esc>la$<esc>
:vnoremap mm s$$<esc>hp
