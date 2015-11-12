set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'

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

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
syntax on

set ic
set hls
set is

set fileencoding=utf-8

autocmd filetype c,cpp set cin

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" NERDTree
map <c-n> :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
