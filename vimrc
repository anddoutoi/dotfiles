" A vimrc



" set nocompatible
" How was it now, we need this or not? RTFMing says
" it´s not needed if Vim uses a .vimrc file. But can
" we be sure? Better be explicit then implicit?
"
" This option stops vim from behaving in a strongly
" vi-compatible way. It should be at the start of any
" vimrc file as it can affect lots of other options
" which you may want to override.



" set exrc
" - boolean (default off)
" If the 'exrc' option is on the current directory is
" searched for three files. The first that exists is
" used, the others are ignored.
" -  The file ".vimrc" (for Unix, Amiga and OS/2) (*)
"             "_vimrc" (for MS-DOS and Win32)     (*)
" -  The file "_vimrc" (for Unix, Amiga and OS/2) (*)
"             ".vimrc" (for MS-DOS and Win32)     (*)
" -  The file ".exrc"  (for Unix, Amiga and OS/2)
"             "_exrc"  (for MS-DOS and Win32)
"
" (*) Using this file or environment variable will cause
" 'compatible' to be off by default.
"
" In other words: support for "local" vim settings.




set nu
" number
" Precede each line with its line number.

set nuw=3
" numberwidth
" number  (Vim default: 4  Vi default: 8), local to window
" Minimal number of columns to use for the line
" number. Only relevant when the 'number' or
" 'relativenumber' option is set. Defaults to 4.

set ru
" ruler
" - boolean (default off), global
" Show the line and column number of the cursor
" position, separated by a comma.



set vb
" visualbell
" Use visual bell instead of beeping. The terminal
" code to display the visual bell is given with 't_vb'.
" When no beep or flash is wanted, use ":set vb t_vb=".
" In the GUI, 't_vb' defaults to "<Esc>|f", which
" inverts the display for 20 msec. If you want to
" use a different time, use "<Esc>|40f", where 40 is
" the time in msec.

" This setting prevents vi from making its annoying beeps when a
" command doesn't work. Instead, it briefly flashes the screen --
" much less annoying.



set acd
" autochdir
" When on, Vim will change the current working directory
" whenever you open a file, switch buffers, delete a buffer
" or open/close a window.
" It will change to the directory containing the file which
" was opened or selected.
" Note: When this option is on some plugins may not work.



" Syntax highlighting is not available when the |+syntax|
" feature has been disabled at compile time.

"syntax enable
" This command switches on syntax highlighting.

syntax on
" If you want Vim to overrule your settings with the defaults.





"filetype on
" Vim can detect the type of file that is edited.  This is done by checking
" the file name and sometimes by inspecting the contents of the file for
" specific text. Each time a new or existing file is edited, Vim will try to
" recognize the type of the file and set the 'filetype' option.
"
" The file types are also used for syntax highlighting.  If the ":syntax on"
" command is used, the file type detection is installed too.  There is no need
" to do ":filetype on" after ":syntax on".







set bg=dark
" background
" Setting this option does not change the background
" color, it tells Vim what the background color looks
" like.
"   When set to "dark", Vim will try to use colors that
" look good on a dark background.  When set to "light",
" Vim will try to use colors that look good on a light
" background.  Any other value is illegal.
"   Vim tries to set the default value according to the
" terminal used.
" This will not always be correct.

set sm
" showmatch
" When a bracket is inserted, briefly jump to the matching
" one. The jump is only done if the match can be seen on
" the screen. The time to show the match can be set with
" 'matchtime'.
" Note: Use of the short form is rated PG.

set list
" list
" Display unprintable characters with '^' and
" put $ after the line.

set lcs=tab:⇥\ ,trail:●,eol:↵
" listchars
" Ctrl+v, u, unicode hex code
"
" tab chars
" 21E2 ⇢
" 21E5 ⇥
" 21E8 ⇨
" 2192 → (rightwards arrow, &rarr;)
" 21D2 ⇒ (rightwards double arrow, &rArr;)
" 25B8 ▸ (TextMate style)
"
" trail chars
" 25CF ●
" 2639 ☹ (frowning face)
" 267A ♺ (recycling symbol)
" 261F ☟ (hand pointing down)
" F8FF  (apple logo)
"
" eol chars
" 21B2 ↲
" 21B5 ↵ (carriage return, &crarr;)
" 21A9 ↩
" 23CE ⏎ (return symbol)
" 00AC ¬ (TextMate style)




" Working with <Tab>s?
" tabstop == softtabstop
"
" Working with spaces?
" softtabstop == shiftwidth


set ts=4
" tabstop
" - number (default 8), local to buffer
" Number of spaces that a <Tab> in the file counts for.

set sts=4
" softtabstop
" - number (default 0), local to buffer
" Number of spaces that a <Tab> counts for while performing
" editing operations, like inserting a <Tab> or using <BS>.
" It "feels" like <Tab>s are being inserted, while in fact a
" mix of spaces and <Tab>s is used.  This is useful to keep
" the 'ts' setting at its standard value of 8, while being
" able to edit like it is set to 'sts'.
" When 'sts' is zero, this feature is off.
" When 'expandtab' is not set, the number of spaces is
" minimized by using <Tab>s.
" NOTE: This option is set to 0 when 'compatible' is set.

set sw=4
" shiftwidth
" - number (default 8), local to buffer
" Number of spaces to use for each step of (auto)indent.
" Used for |'cindent'|, |>>|, |<<|, etc.

" set et
" expandtab
" - boolean (default off), local to buffer
" In Insert mode: Use the appropriate number of spaces to
" insert a <Tab>. Spaces are used in indents with the '>'
" and '<' commands and when 'autoindent' is on.  To insert
" a real tab when 'expandtab' is on, use CTRL-V<Tab>.
" NOTE: This option is reset when 'compatible' is set.





set so=5
" scrolloff
" Minimal number of screen lines to keep above and below
" the cursor. This will make some context visible around
" where you are working. If you set it to a very large
" value (999) the cursor line will always be in the middle
" of the window (except at the start or end of the file or
" when long lines wrap).
" NOTE: This option is set to 0 when 'compatible' is set.





set ai
" autoindent
" boolean (default off), local to buffer
" Copy indent from current line when starting a new
" line (typing <CR> in Insert mode or when using the
" "o" or "O" command).

set si
" smartindent
" - boolean (default off), local to buffer
" Do smart autoindenting when starting a new line. Works
" for C-like programs, but can also be used for other
" languages.
" Not available when compiled without the |+smartindent|
" feature.

" The first setting tells vim to use "autoindent" (that is,
" use the current line's indent level to set the indent level
" of new lines). The second makes vim attempt to intelligently
" guess the indent level of any new line based on the previous
" line, assuming the source file is in a C-like language.
" Combined, they are very useful in writing well-formatted
" source code.

set bs=2
" backspace
" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in
" Insert mode.  This is a list of items, separated by commas.
" Each item allows a way to backspace over something:
"   value   effect
"   indent  allow backspacing over autoindent
"   eol     allow backspacing over line breaks (join lines)
"   start   allow backspacing over the start of insert; CTRL-W
"             and CTRL-U stop once at the start of insert.
"
" When the value is empty, Vi compatible backspacing is used.
"
" For backwards compatibility with version 5.4 and earlier:
"   value   effect
"     0     same as ":set backspace=" (Vi compatible)
"     1     same as ":set backspace=indent,eol"
"     2     same as ":set backspace=indent,eol,start"





if has('mouse')
	set mouse=a
	" Enable the use of the mouse.  Only works for certain
	" terminals (xterm, MS-DOS, Win32 |win32-mouse|, QNX
	" pterm, *BSD console with sysmouse and Linux console
	" with gpm).

	set mh
	" mousehide
	" When on (default), the mouse pointer is hidden when
	" characters are typed. The mouse pointer is restored
	" when the mouse is moved.
endif " has('mouse')



if has('autocmd')
	autocmd FileType html       setlocal ts=2 sts=2 sw=2 et
	autocmd FileType css        setlocal ts=2 sts=2 sw=2 et
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noet

	autocmd BufWritePost vimrc source $MYVIMRC
	" Should re-source your vimrc file upon :w
endif " has('autocmd')





let mapleader = ','
nmap <leader>v :tabedit $MYVIMRC<CR>
" Open your vimrc file for editing

nmap <leader>l :set list!<CR>
" Toggle between list and nolist.





" Delete blank lines
" :g/^$/d

" Trim trailing spaces on current line
" :s/\s\+$//e

nmap <leader><BS> :s/\s\+$//e<CR>
