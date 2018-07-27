" ---------- Vundle Initialization ----------  "
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin('~/.vim_local/bundle')
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'hashivim/vim-terraform'
" Plugin 'ekalinin/Dockerfile.vim'

" if filereadable(expand('~/.vim/vundle.conf'))
"  source ~/.vim/vundle.conf
" endif

" if filereadable(expand('~/.vim_local/vundle.conf'))
"  source ~/.vim_local/vundle.conf
" endif

" call vundle#end()
" -------- End Vundle Initialization --------  "

syntax on
filetype plugin indent on
set autoindent
set cursorline
set cursorcolumn
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab
set number relativenumber 
set nowrap
set ruler
set autoindent
set iskeyword+=-
set backspace=indent,eol,start

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

" Relative or absolute number lines
function! NumberToggle()
    exe 'set nu!' &nu ? 'rnu!' : ''
endfunction
nnoremap <CR> :call NumberToggle()<CR>
"let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]

" set F2 to be the same as doing :set paste
set pastetoggle=<F2>
