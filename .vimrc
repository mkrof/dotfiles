call pathogen#infect()
call pathogen#helptags()

" ------- GENERAL ---------------------
set number
set tabstop=4		"Specify the width of a tab character
set expandtab		"Use spaces instead of tabs
set softtabstop=4	"Amount of whitespace to be inserted 
set shiftwidth=4	"Amount of whitespace to insert or remove using indentation commands in normal mode.

" Make find nicer
set wildmenu
set wildmode=full
set path=$PWD/**
set wildignore=*.pyc,*.o,*.obj,node_modules/**,.idea/**

set autoindent

" Highlight search results
set hlsearch

" No bells
set noerrorbells

" Always show the status bar
set laststatus=2

" Enable syntax highlighting
syntax enable

" Autocompletion <c-x> <c-o>
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" ------- COLORS ----------------------
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Solarized colorscheme settings
let g:solarized_termcolors=256

set background=dark

colorscheme molokai


" ------- SYNTASTIC -------------------
let g:syntastic_javascript_jshint_conf="~/.jshintrc"
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
" highlight SyntasticErrorSign guifg=red guibg=red


" ------- VIM-JAVASCRIPT --------------
let javascript_enable_domhtmlcss=1

" -------JAVASCRIPT-LIBRARIES-SYNTAX---
let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs,requirejs'


" ------- FILETYPE SPECIFIC -----------
" Treat *.cshtml files as html
autocmd BufRead,BufNewFile *.cshtml setf html

" autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2


" ------- SNIPMATE --------------------
filetype plugin on


" ------- UNITE -----------------------
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <C-p> :Unite -start-insert file_rec/async:!<CR>
nnoremap <C-p> :Unite -start-insert file_rec/async buffer<CR>

let g:unite_source_history_yank_enable=1
nnoremap <C-y> :Unite history/yank<CR>


" ------- AIRLINE -----------------------
let g:airline_theme='dark'

" ------- GUI -------------------------
if has('gui_running')
    set guioptions-=T   " Remove the toolbar
    set guioptions-=r   " Remove right scrollbar
    set guioptions-=R   " Remove right scrollbar when taller than viewport
    set guioptions-=l   " Remove left scrollbar
    set guioptions-=L   " Remove left scrollbar when taller than viewport
endif


" ------- WINDOWS --------------------
if has('win32')
    set guifont=Consolas
    colorscheme mustang
    set backspace=2 " make backspace work
endif

