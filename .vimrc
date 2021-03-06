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

set backspace=2 " make backspace work

set autoindent

" Highlight search results
set hlsearch

" No bells
set noerrorbells

" Always show the status bar
set laststatus=2

set nowrap

" copy to system clipboard (requires >= 7.4)
set clipboard=unnamed

" Enable syntax highlighting
syntax enable

" Specific filetypes
filetype plugin indent on
au FileType html set sw=2 ts=2
au FileType javascript set sw=2 ts=2 sts=2

" Autocompletion <c-x> <c-o>
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Session options
set sessionoptions=blank,buffers,curdir,folds,help,options,resize,tabpages,winpos,winsize

" ------- COLORS ----------------------
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Solarized colorscheme settings
let g:solarized_termcolors=256

set background=dark

colorscheme gruvbox

" ------- DELIMITMATE -----------------
" let delimitMate_expand_cr = 1 " expand matchpairs on return.


" ------- SYNTASTIC -------------------
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_error_symbol='✖'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=1


" ------- VIM-JAVASCRIPT --------------
let javascript_enable_domhtmlcss=1

" -------JAVASCRIPT-LIBRARIES-SYNTAX---
let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs,requirejs'

" ------- VIM-JSX ---------------------
let g:jsx_ext_required=0


" ------- FILETYPE SPECIFIC -----------
" Treat *.cshtml files as html
autocmd BufRead,BufNewFile *.cshtml setf html

autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType sass setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType styl setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2


" ------- SNIPMATE --------------------


" ------- UNITE -----------------------
nnoremap <C-p> :Unite -start-insert file_rec/async -buffer-name=buffer -profile-name=buffer buffer<CR>
call unite#custom#profile('buffer', 'context.smartcase', 1)
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec/async', 'ignore_pattern', 'node_modules/\|bower_components/')

let g:unite_source_history_yank_enable=1
nnoremap <C-y> :Unite history/yank<CR>

" Have unite use ag instead of find.
if executable('ag')
    let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif


" ------- AIRLINE -----------------------
let g:airline_powerline_fonts=1
let g:airline_theme='lucius'


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
endif

