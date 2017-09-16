call plug#begin('~/.vim/plugged')

" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Autocompletion
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'for': ['javascript', 'javascript.jsx'] }

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim',  { 'for': ['javascript', 'javascript.jsx'] }
Plug 'jelera/vim-javascript-syntax',  { 'for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install tern' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }

" HTML / CSS 
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'

" Open GL Shading Language
Plug 'tikhomirov/vim-glsl'

" C#
Plug 'OrangeT/vim-csharp'

" Utilities
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'neomake/neomake'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/calendar-vim'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'tomasr/molokai'

call plug#end()

" Configure Python environments
let g:python_host_prog=$HOME.'/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog=$HOME.'/.pyenv/versions/neovim3/bin/python'

" General
set number
set tabstop=4		"Specify the width of a tab character
set expandtab		"Use spaces instead of tabs
set softtabstop=4	"Amount of whitespace to be inserted 
set shiftwidth=4	"Amount of whitespace to insert or remove using indentation commands in normal mode.
set autoindent
set hlsearch        " Highlight search results
set backspace=2     " make backspace work
set nowrap
set visualbell
set noerrorbells
set wildmenu
set wildmode=full
set path=$PWD/**
set wildignore+=*.pyc,*.o,*.obj,node_modules/**,.idea/**
set laststatus=2        " Always show the status bar
set clipboard=unnamed   " copy to system clipboard (requires >= 7.4)
let $PATH.=':node_modules/.bin/'

" Handle specific filetype configuration
filetype plugin indent on
au FileType html set sw=2 ts=2
au FileType javascript set sw=2 ts=2 sts=2
au FileType markdown set wrap spell
au FileType gitcommit set spell

" Configure autocompletion <c-x> <c-o>
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Configure deoplete
set runtimepath+=~/.vim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup=1
let g:deoplete#file#enable_buffer_path=1

" Configure neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Configure FZF
nnoremap <C-p> :GFiles<CR> 


" Configure Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

"Configure vim-javascript
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

" Configure mxw/vim-jsx
let g:jsx_ext_required=0

" Configure javascript-libraries-syntax
let g:used_javascript_libs='jquery,underscore,angularjs,angularui,angularuirouter,react,flux,chai,ramda,vue,d3'

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END

" Configure vim-airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#virtualenv#enabled = 1
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Set initial olorscheme
set background=dark
colorscheme gruvbox
