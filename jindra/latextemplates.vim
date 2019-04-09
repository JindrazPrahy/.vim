"===================== Templates =====================
"This file contains various templates to be used in .tex files


:augroup  texttemplate
:	autocmd!
"Command list:
"	1. \newfile
"	2. \article

"Most vanilla filestart
":	autocmd BufRead *.tex    :inoremap \newfile 
:inoremap \newfile 
\\documentclass[10pt,a4paper]{article}<CR>
\\usepackage[utf8]{inputenc}<CR>
\\usepackage[czech]{babel}<CR>
\\usepackage[T1]{fontenc}<CR>
\\usepackage{amsmath}<CR>
\\usepackage{amsfonts}<CR>
\\usepackage{amssymb}<CR>
\\usepackage{graphicx}<CR>
\\usepackage{lmodern}<CR>
\\begin{document}<CR><CR>
\\end{document}<esc>ki

"Basic article
":	autocmd BufRead *.tex    :inoremap \article 
:inoremap \article 
\\documentclass[10pt,a4paper]{article}<CR>
\\usepackage[utf8]{inputenc}<CR>
\\usepackage[czech]{babel}<CR>
\\usepackage[T1]{fontenc}<CR>
\\usepackage{amsmath}<CR>
\\usepackage{amsfonts}<CR>
\\usepackage{amssymb}<CR>
\\usepackage{graphicx}<CR>
\\usepackage{lmodern}<CR>
\\usepackage[top = 2cm, bottom = 2cm, left = 2cm, right = 2cm]{geometry}<CR>
\\usepackage[sc]{mathpazo}<CR>
\\linespread{1.05}<CR>
\\usepackage{microtype}<CR>
\\usepackage{lettrine}<CR>
\\usepackage{titlesec}<CR>
\\usepackage{titling}<CR>
\\setlength{\droptitle}{-4\baselineskip}<CR>
\\pretitle{\begin{center}\huge\bfseries}<CR>
\\posttitle{\end{center}}<CR>
\\renewcommand\thesection{\Roman{section}}<CR>
\\renewcommand\thesubsection{\arabic{subsection}}<CR>
\\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{}<CR>
\\titleformat{\subsection}[block]{\large}{\thesubsection.}{1em}{}<CR>
\\author{\textsc{Jindřich Dušek}}<CR>
\\title{<++>}<CR>
\\date{\today}<CR>
\\begin{document}\maketitle\thispagestyle{empty}<CR>
\<CR>
\\end{document}

"Fykos solution file start
":	autocmd BufRead *.tex :inoremap \fks 
:inoremap \fks 
\\documentclass{fkssolpub}<CR>
\\usepackage[utf8]{inputenc}<CR>
\\usepackage[T1]{fontenc}<CR>
\\usepackage{lmodern}<CR>
\\usepackage[czech]{babel}<CR>
\\usepackage{graphicx}<CR>
\\usepackage{fkssugar}<CR>
\\author{Jindřich Dušek}<CR>
\\school{Gymnázium Jana Keplera}<CR>
\\series{}<CR>
\\begin{document}<CR>
\\begin{problem}{<++>}<CR><++><CR>
\\end{problem}<CR>
\\end{document}<esc>5ki

"For taking notes
:inoremap \zapis 
\\documentclass[10pt,a4paper]{article}<CR>
\\usepackage[utf8]{inputenc}<CR>
\\usepackage[czech]{babel}<CR>
\\usepackage[T1]{fontenc}<CR>
\\usepackage{amsmath}<CR>
\\usepackage{amsfonts}<CR>
\\usepackage{amssymb}<CR>
\\usepackage{amsthm}<CR>
\\usepackage{graphicx}
\\usepackage{lmodern}<CR>
\\usepackage[top = 2cm, bottom = 2cm, left = 2cm, right = 2cm]{geometry}<CR>
\\usepackage{lettrine}<CR>
\\usepackage{titlesec}<CR>
\\usepackage{fkssugar}<CR>
\<CR>
\\usepackage{titling}<CR>
\\setlength{\droptitle}{-4\baselineskip}<CR>
\\pretitle{\begin{center}\huge\bfseries}<CR>
\\posttitle{\end{center}}<CR>
\\renewcommand\thesection{\Roman{section}}<CR>
\\renewcommand\thesubsection{\arabic{subsection}}<CR>
\\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{}<CR>
\\titleformat{\subsection}[block]{\bfseries \large}{\thesubsection.}{1em}{}<CR>
\<CR>
\\usepackage{fancyhdr}<CR>
\\pagestyle{fancy}<CR>
\<CR>
\%----------------------------------------------------------------<CR>
\%INFO O DOKUMENT<CR>
\\fancyhead[L]{<++>}<CR>
\\fancyhead[C]{\textbf{<++>}}<CR>
\\fancyhead[R]{\textsc{Jindřich Dušek}, <++>}<CR>
\%----------------------------------------------------------------<CR>
\%VLASTNÍ MAKRA<CR>
\\newtheorem{dlzt}{Důležité:}<CR>
\\newtheorem{defi}{Definice:}<CR>
\\begin{document}<CR>
\<++><CR>
\\end{document}<esc>gg


"Memoir file start
:inoremap \memoir 
\\documentclass[openright,14pt]{memoir}<CR>
\\usepackage[utf8]{inputenc}<CR>
\\usepackage[T1]{fontenc}<CR>
\\usepackage{lmodern}<CR>
\\usepackage[czech]{babel}<CR>
\\usepackage{graphicx}<CR>
\\usepackage{geometry}<CR>
\\usepackage{amsthm}<CR>
\\usepackage{fkssugar}<CR>
\\usepackage{varwidth}<CR>
\<CR>
\%-----------Sekce---------------------------<CR>
\\geometry{a4paper}<CR>
\\chapterstyle{dash} %I like this one but good ones are also bianchi and veelo<CR>
\<CR>
\%-----------Obal knihy---------------------<CR>
\\newlength{\drop} %Is required later on<CR>
\<CR>
\%------------- Margins -----------------------------<CR>
\\setlrmargins{2cm}{*}{*}<CR>
\\setulmargins{1cm}{*}{*}<CR>
\%------------Dělení knihy-------------------------<CR>
\\addto\captionsczech{\renewcommand*\contentsname{Obsah}}<CR>
\<CR>
\\usepackage{titlesec}<CR>
\\usepackage{titling}<CR>
\\setlength{\droptitle}{-4\baselineskip}<CR>
\\pretitle{\begin{center}\huge\bfseries}<CR>
\\posttitle{\end{center}}<CR>
\\renewcommand\thesection{\Roman{section}}<CR>
\\renewcommand\thesubsection{\arabic{subsection}}<CR>
\\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{}<CR>
\\titleformat{\subsection}[block]{\bfseries \large}{\thesubsection.}{1em}{}<CR>
\<CR>
\%---------------- TOC conf. -----------------<CR>
\\addto\captionsczech{\renewcommand*\chaptername{Téma}}  %---Kapitola<CR>
\<CR>
\%------ My own theorems ------------------------<CR>
\\newtheorem{pr}{Příklad}<CR>
\\newtheorem{defi}{Definice}<CR>
\<CR>
\%-------------------------------------------<CR>
\\pagenumbering{arabic}<CR>
\<CR>
\\begin{document}<CR>
\%------------ Nadpis --------------------------------------<CR>
\\mainmatter<CR>
\\thispagestyle{empty}<CR>
\\newpage<CR>
\{<CR>
\\drop=0.1\textheight<CR>
\\centering<CR>
\<CR>
\\vspace*{\baselineskip}<CR>
\\scshape<CR>
\<+Author+><CR>
\\rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt}<CR>
\\rule{\textwidth}{0.4pt}\\[\baselineskip]<CR>
\{\Huge <+Project name+>}\\[0.2\baselineskip]<CR>
\\rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt}<CR>
\\rule{\textwidth}{1.6pt}\\[\baselineskip]<CR>
\\begin{center}<CR>
\<+Details+>
\\end{center}<CR>
\\scshape<CR>
\}<CR>
\%----------------- TOC -----------------------------------------<CR>
\\newpage<CR>
\\tableofcontents<CR>
\%----------------- Preface --------------------------------------<CR>
\\newpage<CR>
\\pagestyle{headings}<CR>
\\addcontentsline{toc}{chapter}{Předmluva}\markboth{Předmluva}{}<CR>
\\chapter{<+First chapter+>}<CR>
\<CR>
\\section{<+First section+>}<CR>
\\end{document}<esc>ggi




:augroup END
