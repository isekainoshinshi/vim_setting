"------------------
"default setting
"------------------
	"set guifont=Courier_New:h14
	set guioptions-=m
	set guioptions-=T
	"set guifont=SimHei:h14
	set guifont=Lucida_Console:h12:cANSI:qDRAFT
	set langmenu=en_US
	let $LANG= 'en_US'
	set termencoding=utf-8 
	set encoding=utf8 
	set fileencodings=utf8
	syntax on
	set nu
	set tabstop=4
	set shiftwidth=4
	set smartindent
	set cindent
	set paste
	set nopaste
	set noshowmode
	set backspace=indent,eol,start
	set cmdheight=2
	set scrolloff=5
	filetype off
	set nocompatible
	set cursorcolumn
	set cursorline
	let g:load_doxygen_syntax=1

"-----------------
"keymap
"----------------
so ~/my_vim_setting/keymap.vim

"------------------
"Plunge
"-----------------
so ~/my_vim_setting/plug_include.vim

filetype plugin indent on
