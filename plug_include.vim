
"----------------------
"included plug
"----------------------
call plug#begin('~/.vim/plugged')
	Plug 'lifepillar/vim-cheat40'
	Plug 'octol/vim-cpp-enhanced-highlight'	
	"Plug 'sheerun/vim-polyglot'
	Plug 'sainnhe/sonokai'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-unimpaired'
	Plug 'ludovicchabant/vim-gutentags'
	"Plug 'skywind3000/gutentags_plus'
	"Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'dense-analysis/ale'
	Plug 'tpope/vim-surround'
	"Plug 'tpope/vim-commentary'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
	Plug 'ycm-core/YouCompleteMe', {'d': 'python install.py --clang-completer --system-libclang'}
	"Plug 'Yggdroot/LeaderF'
	Plug 'Shougo/echodoc.vim'
	"Plug 'lervag/vimtex' 
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'mzlogin/vim-markdown-toc'
	Plug 'iamcco/mathjax-support-for-mkdp'
	"Plug 'iamcco/markdown-preview.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
	Plug 'SirVer/ultisnips'
	Plug 'vim-scripts/DoxygenToolkit.vim'
	Plug 'ferrine/md-img-paste.vim'
	Plug 'skywind3000/asyncrun.vim'
call plug#end()

"------------------------
"plug setting
"------------------------
	
"-----------------------
"color theme
"----------------------
if has('termguicolors')
  set termguicolors
endif
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:airline_theme = 'sonokai'
colorscheme sonokai

"-----------------------
"vim-cpp-enhanced-highlight
"------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"-----------------------
"ale
"----------------------
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 100
let g:ale_lint_delay = 1000
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
			\ 'c': ['clang'], 
			\ 'cpp': ['clang++'], 
			\ }
"let g:ale_c_gcc_options = '-Wall -std=c11'
let g:ale_c_clang_options = '-Wall -std=c11'
"let g:ale_cpp_gcc_executable = 'c:/Program Files/LLVM/bin'
"let g:ale_cpp_gcc_options = '-Wall -std=c++14'
let g:ale_cpp_clang_options = '-Wall -std=c++14'
"let g:ale_cpp_gcc_executable = 'c:/Program Files/LLVM/bin'

"--------------------------
"ycm
"-------------------------
"let g:ycm_global_ycm_extra_conf='~\.vim\plugged\YouCompleteMe\third_party\ycmd\.ycm_extra_conf.py'
"default setting"
let g:ycm_add_preview_to_completeopt=0
let g:ycm_auto_trigger=1
let g:ycm_global_ycm_extra_conf='~/vim_setting/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_string=1
let g:ycm_filetype_blacklist={'markdown': 1}
let g:ycm_filetype_specific_completion_to_disable = {'gitcommit': 1, 'markdown': 1}
augroup set_completeopt
	au!
		let g:ycm_auto_trigger=1
		au Filetype markdown let g:ycm_auto_trigger=0
augroup END
set completeopt=menu,menuone

"------------------------
"echodoc
"-----------------------
let g:echodoc#enable_at_startup = 1

"-------------------------
"vim-markdown
"-------------------------
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled=1

"-------------------------
"markdown-preview.vim
"-------------------------
"let g:mkdp_path_to_chrome = "chrome"

"-------------------------
"markdown-preview.vim
"-------------------------
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'firefox'
let g:mkdp_browserfunc = ''
let g:mkdp_filetypes = ['markdown', 'md']

"------------------------
"ultisnips
"------------------------
let g:UltiSnipsExpandTrigger = '<M-c>'
let g:UltiSnipsJumpForwardTrigger = '<M-n>'
let g:UltiSnipsJumpBackwardTrigger = '<M-p>'
let g:UltiSnipsSnippetDirectories = ["~/vim_setting"]
let g:UltiSnipsEditSplit = "vertical"

"-----------------------
"instant-markdown
"-----------------------
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = 'D:\temp\instatn_markdown.log'
"let g:instant_markdown_browser = "firefox"
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8090
"let g:instant_markdown_python = 1

"-----------------------
" DoxygenToolkit.vim
" ----------------------
let g:DoxygenToolkit_authorName="liujy ljyjlljyjl@gmail.com"
let g:DoxygenToolkit_paramTag_pre="@param\t"
let g:DoxygenToolkit_fileTag="@file\t"
let g:DoxygenToolkit_authorTag="@author\t"
let g:DoxygenToolkit_dateTag="@date\t"
let g:DoxygenToolkit_nameTag="@name\t"
let g:DoxygenToolkit_briefTag_pre="@brief\t"
let g:DoxygenToolkit_templateTag_pre="@tparam\t"

"-----------------------
" autopair
" ----------------------
let g:AutoPairsFlyMode=1
let g:AutoPairsShortcutBackInsert=''
let g:AutoPairsShortcutFastWrap=''
let g:AutoPairsShortcutToggle=''

"-----------------------
" md-img-paste 
" ----------------------
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'pic'
let g:mdip_imgname = 'pic'
let g:mdip_imgdir_intext = 'pic'

"-----------------------
" asyncrun
" ----------------------
let g:asyncrun_open=6
let g:asyncrun_encs='gbk'
