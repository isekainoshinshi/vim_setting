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

function! Terminal_MetaMode(mode)
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=80
    endif
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
	for c in [';']
		call s:metacode(a:mode, c)
	endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
endfunc

command! -nargs=0 -bang VimMetaInit call Terminal_MetaMode(<bang>0)
"-----------------
"keymap
"----------------
so ~/vim_setting/keymap.vim

"------------------
"Plunge
"-----------------
so ~/vim_setting/plug_include.vim

filetype plugin indent on
