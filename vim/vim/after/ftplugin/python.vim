setlocal tabstop=4
setloca shiftwidth=4
setlocal expandtab
setlocal hlsearch

setlocal autoindent


"filetype plugin indent on
let g:pydiction_location = '/nfs/site/home/jbrivera/.vim/bundle/pydiction/complete-dict'
let g:python_highlight_all = 1
"let g:pydiction_menu_height = 3
let pyVer = 'python3.7.4'
let pyOpt=''
noremap <C-c> :w<CR>:exec '! ' pyVer  expand('%:t') pyOpt<CR>
setlocal number
setlocal relativenumber
