set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'

" Call next lines after install
" sudo apt-get install build-essential cmake
" sudo apt-get install python-dev python3-dev
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --tern-completer
Plugin 'Valloric/YouCompleteMe'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set exrc
set secure

set t_Co=256
colors koehler

" vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
nmap qd :b#<bar>bd#<CR>
nmap qk :bn!<CR>
nmap ql :bn!<CR>
nmap qj :bp!<CR>
nmap qh :bp!<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

" windows navigate
nmap zh <C-w><Left>
nmap zj <C-w><Down>
nmap zk <C-w><Up>
nmap zl <C-w><Right>

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set number
syntax on

set ic
set hls
set is

set fileencoding=utf-8

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let &path.="source/include,"

" NERDTree
map <c-n> :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set splitright

" Snippets
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsListSnippets="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:ycm_global_ycm_extra_conf='./.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

let g:clang_library_path='/usr/local/clang-3.6/lib'

set clipboard=unnamedplus

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
