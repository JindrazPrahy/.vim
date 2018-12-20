"This is a file wherein I put all my optional features which can be turned on
"or of by ftplugin

"==================== Spell-checker ========================
"I use my spell checker to highlight words which are wrong
"stylistically. For this I have created a special dictionary with
"just the wrong words and highlight them.
"As of now I only have a Czech dictionary

:if g:EnableCzechWordCheck == 1

"Setting up my wordlist
:set spell spelllang=cz-ugly

"Disabling highlight for unrecognized words (a lot of other words would be
"highlighted as I do not use other dictionaries)
:augroup disablehighlight
:autocmd!
:autocmd BufRead * :hi clear SpellBad
:augroup END

:endif

"==================== Calculator ===========================

:if g:EnableCalculator == 1

:fun! Bc(expression)
:	let a:argument = ''
:	let a:argument = 'bc <<< '.a:expression
:	call WriteBashCommandOutput(a:argument)
:endfun

:nnoremap ?? :call Bc('

:endif


