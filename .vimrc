"""""""""""""""""""""""""""
"" common settings
""
set tabstop=4
set shiftwidth=4
set showmatch
set cursorline
set number
command! FormatJason %!python -m json.tool
language en_US
syntax on

"""""""""""""""""""""""""""
""
" Viewport Controls
" ie moving between split panes
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

"""""""""""""""""""""""""""
""
execute pathogen#infect()

"""""""""""""""""""""""""""
""
" Vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"""""""""""""""""""""""""""
""
" Configure plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'


call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""
""
""syntastic
""
let g:syntastic_sh_checkers = ['shellcheck']

"""""""""""""""""""""""""""
""
""python settings
""
let python_highlight_all = 1
"au BufNewFile,BufRead *.py
au FileType py set textwidth=79 
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
	\ set smartindent
""au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

"""""""""""""""""""""""""""
""
""winmanager configuration"
""
let g:NETRW_title='NETRW Tree'
let g:winManagerWindowLayout='NERDTree|BufExplorer'

function! NETRW_Start()
    exec 'Explore'
endfunction

function! NETRW_IsValid()
    return 1
endfunction

let g:winManagerWindowSize=22
"let g:defaultExplorer=0

"nmap <silent> <F2> :WMToggle<cr>|1wincmd q<cr>
nmap <silent> <F2> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif<CR>
"nmap <F2> :WMToggle<CR>:q<CR>

"""""""""""""""""""""""""""
""
""NERDTree settings
""
"let loaded_nerd_tree=1
let g:NERDTreeDirArrows=0
let g:NERDTree_title = "[NERDTree]"
" let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
 
function! NERDTree_Start() 
     exe 'NERDTree'
endfunction 

function! NERDTree_IsValid() 
	return 1 
endfunction

"""""""""""""""""""""""""""
""
"""netrw configuration
let g:netrw_altv = 1
let g:netrw_browse_split=2
"let g:netrw_preview   = 1
let g:netrw_liststyle = 3
"let g:netrw_winsize   = 20

let g:explDetailedList = 0

"""""""""""""""""""""""""""
""
" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/

"""""""""""""""""""""""""""
""
" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/d/Software/ctags58/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1 
map <F12> :TlistToggle<CR>
