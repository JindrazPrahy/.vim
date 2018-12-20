A .vim setup (by Jindřich Dušek)
===============================================

This is a .vim directory configured for using vim with LaTeX, Python, C, and
Metapost. You can download it and use it to give your vim extra functionality
that will hopefully help you to save time while writing anything but especially
stuf in LaTeX. More features are being added periodically.

Should you feel there is a room for improvement in my .vim do not hesitate to
contact me (jd@mamlasinky.com) and hopefully your issue will be addressed.

Installation
---------------------

The installation is fairly straightforward. Ensure that you have

- git
- and vim.

Is recommended that you update your vim and that you ensure that you have a
full version of vim installed on you device (on some devices vim-tiny is
installed instead of the full version of vim). This is usually done by typing
the following line into your terminal:

sudo apt-get install vim -y

Next run the following to also get a copy of a .vimrc file which is required to
make this setup work:

```
cd ~ && git clone https://github.com/JindrazPrahy/.vim.git && cp ~/.vim/.vimrc.backup ~/.vimrc
```


Documentation
---------------------

Firstly I will cover general rules of using this .vim setup and then I will
cover the individual macros that vim loads for specific file extensions.

Generally
--------

I use [pathogen](https://github.com/tpope/vim-pathogen) to install new
plugins which are all located in the bundle subdirectory of .vim.
Furthermore, I use ftplugin to make vim behave differently in different
files according to their extension.

Feel free to download new plugins to your taste!

LaTeX
--------

The most important thing of this setup is the 
[vim-latex](http://vim-latex.sourceforge.net/) plugin. 
This plugin provides you with extensive features which 
make TeX writing in vim substantially more comfortable. To 
get to know them I recommend to read the plugin's
[documentation](<http://vim-latex.sourceforge.net/documentation/latex-suite/). 
To explain the main features shortly, 
you can compile the .tex file with \ll, you can press <C-j> to 
jump to segments of text like this `<++>` and by pressing <F5> 
you can write `\begin{}...\end{}` enviroments more quickly.

Secondly, I have written a lot of additional macros which 
mostly serve to save time while writing often used words like 
`\frac` or `\mathrm`.

Complete macro list TBA -- you can find the macros now by reading 
ftplugin/tex.vim.


Python 
--------


Tba

C
--------


Tba

Metapost
--------

Tba


