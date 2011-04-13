" Configuration file for vim

" Legacy stuff

" Forget compatibility with Vi. Who cares.
set nocompatible


" Actual VIM stuff

set vb t_vb=
" This setting prevents vi from making its annoying beeps when a
" command doesn't work. Instead, it briefly flashes the screen --
" much less annoying.
" Editor stuff

" Show lines numbers
set number
" Line number column width
set numberwidth=3

set ruler
" This setting ensures that each window contains a statusline
" that displays the current cursor position.






" this was needed to get sparkup to work, guess it tells vim to go and look in
" the ftplugin dir.
filetype indent plugin on



" Code stuff

" syntax highlightning
syntax on

" Indent stuff
set autoindent
set smartindent
" The first setting tells vim to use "autoindent" (that is,
" use the current line's indent level to set the indent level
" of new lines). The second makes vim attempt to intelligently
" guess the indent level of any new line based on the previous
" line, assuming the source file is in a C-like language.
" Combined, they are very useful in writing well-formatted
" source code.


" Tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
" expandtab, use \t as tab or expand each tab to space characters? 
" set noexpandtab        " use \t, not spaces, this is the default
" set expandtab          " use spaces instead of \t


" Show matching brackets
set showmatch

" Enable code folding
set foldenable

" Hide mouse when typing
set mousehide

set list

" 'lcs' is short for 'listchars'
" Ctrl+v, u, unicode hex code

" tab: 25b8
" eol: 00ac
set lcs=tab:▸\ ,eol:¬         " TextMate style

" tab: 21e5
" eol: 21b5
set listchars=tab:⇥\ ,trail:☠,eol:↵       " My style
