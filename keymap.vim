"------------------
"keymap
"-----------------
"-----------------
"switch windows
"----------------
nmap <tab> <c-w>

"---------------
"enhance insert and Ex mode
"--------------
map! <c-l> <delete>
map! <c-e> <c-o>de

"----------------
"enhance insert mode movement
"----------------
map! <M-l> <Right>
map! <M-j> <Down>
map! <M-h> <Left>
map! <M-k> <Up>
map! <M-w> <c-o>w
map! <M-b> <c-o>b
map! <M-e> <c-o>e<Right>

"----------------
"quick new line
"----------------
imap <M-O> <c-o>O
imap <M-o> <c-o>o
imap <M-;> <c-o>A;<CR>


nmap <leader>d <plug>(YCMHover)
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

