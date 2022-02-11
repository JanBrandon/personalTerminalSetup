"Python path
let g:python3_host_prog = '/usr/intel/bin/python3.7.4' 
"let g:jedi#use_tabs_not_buffers = 1


filetype plugin indent on

"Plugins
call plug#begin('/nfs/sc/disks/sc_dhv_00120/work/jbrivera/vimConf/nvim/plugged')

Plug 'davidhalter/jedi-vim'
"Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'

Plug 'tanvirtin/monokai.nvim'
Plug 'patstockwell/vim-monokai-tasty'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'terryma/vim-multiple-cursors'
"Plug 'zchee/deoplete-jedi'
call plug#end()
autocmd FileType python setlocal completeopt-=preview
"nerd tree
"nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTree<CR>
"nnoremap <C-f> :NERDTreeToggle<CR>

"Basic configuration
syntax on
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set scrolloff=9
"shortcuts
"noremap <C-a> :w<CR>

nnoremap <c-a> :w<CR>
inoremap <c-a> <Esc>:w<CR>

"Color issue in colorscheme solution
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " True gui colors in terminal
set termguicolors

colorscheme vim-monokai-tasty

"Airline


let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
""let g:airline_powerline_fonts = 0
"let g:powerline_loaded = 0 
"
"if !exists('g:airline_symbols')
"	  let g:airline_symbols = {}
"  endif
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = 'b'
"let g:airline_symbols.readonly = 'r'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty='⚡'

"Buffer tab
noremap <C-L> :bnext<CR>
noremap <C-u> :bprev<CR>
noremap <C-q> :bdelete <CR> 

"Exit terminal mode
tnoremap <Esc> <C-\><C-n>

"Open terminal
noremap <C-t> <Esc> :split<CR> <C-w>j :res -10 \| :term  <CR> :set nonumber \| :set norelativenumber <CR>i 

"Change between terminal and code 
tnoremap <C-k> <C-\><C-n><C-w>k
noremap <C-j>  <C-w>ji
