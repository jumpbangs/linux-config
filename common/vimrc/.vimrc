"------------------------------------------------------------------------------"
"                               General Settings                               "
"------------------------------------------------------------------------------"
" Don't try to vi compatible
set nocompatible

" Show line number
set number

" Turn on syntax highlighting
syntax on

" Set spelling
"set spell

" Map ii to esc
inoremap ii <Esc> 

" NerdTree 
map <C-o> :NERDTreeToggle<CR>

" Clipboard
set clipboard=unnamed

"------------------------------------------------------------------------------"
"                               Plugins (vim-plug)                             "
"------------------------------------------------------------------------------"
" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" gruvbox
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" livedown
Plug 'shime/vim-livedown'

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" SimpylFold
Plug 'tmhedberg/simpylfold'

" indent/python.vim
Plug 'vim-scripts/indentpython.vim'

" youcompleteme
Plug 'valloric/youcompleteme'

" Syntastic 
Plug 'vim-syntastic/syntastic'

" PEP 8
Plug 'nvie/vim-flake8'

" vim-nerdtree
Plug 'preservim/nerdtree'

" vim-nerdtree-tabs
Plug 'jistr/vim-nerdtree-tabs'

" ctrlp.vim
Plug 'kien/ctrlp.vim'

" fugitive.vim (git-plugin)
Plug 'tpope/vim-fugitive'

" surround.vim
Plug 'tpope/vim-surround'

" Emmit.vim
Plug 'mattn/emmet-vim'

" Comment Fram Vim 
Plug 'cometsong/commentframe.vim'

" Vim-you-autocorrect
Plug 'sedm0784/vim-you-autocorrect'

" Table-mode
Plug 'dhruvasagar/vim-table-mode'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"------------------------------------------------------------------------------"
"                               Gruvbox Settings                               "
"------------------------------------------------------------------------------"
" set termguicolors
"
" " for dark version
" set background=dark
"
" " for light version
 set background=light

" " set contrast
" " this configuration option should be placed before `colorscheme
" gruvbox-material`
" " available values: 'hard', 'medium'(default), 'soft'
 let g:gruvbox_material_background = 'hard'
"
 colorscheme gruvbox-material

let g:airline_theme = 'gruvbox_material'

"------------------------------------------------------------------------------"
"                             Vim Livedown Settings                            "
"------------------------------------------------------------------------------"
let g:livedown_autorun = 0
"
" " should the browser window pop-up upon previewing
let g:livedown_open = 1
"
" " the port on which Livedown server will run
let g:livedown_port = 1337
"
" " the browser to use, can also be firefox, chrome or other, depending on
" your executable
let g:livedown_browser = "chrome"

"------------------------------------------------------------------------------"
"                                  Other Stack                                 "
"------------------------------------------------------------------------------"

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

au BufRead,BufNewFile *.md setlocal textwidth=80


"------------------------------------------------------------------------------"
"                              Python IDE Settings                             "
"------------------------------------------------------------------------------"

set splitbelow
set splitright

" Split Nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Enable folding method
nnoremap <space> za

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
    \ encoding=utf-8

" YouCompleteMe addition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python Highlighting
let python_higlight_all=1
syntax on


" Adding jedi to vim path
let g:ycm_python_interpreter_path = '/usr/bin/python3'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'


"------------------------------------------------------------------------------"
"                               Emmt-vim Settings                              "
"------------------------------------------------------------------------------"

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key = '<c-c>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git Gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
