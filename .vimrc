syntax enable

let &t_ti.="\e[2 q"
let &t_SI.="\e[6 q"
let &t_EI.="\e[2 q"
let &t_te.="\e[0 q"
let mapleader="\<Space>"

set nobackup
set noswapfile
set nocompatible
set visualbell t_vb=
set noerrorbells
set number
set scrolloff=5
set hlsearch
set cursorline
set smartindent
set clipboard=unnamed
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~

inoremap <silent> jj <ESC>
nnoremap Y y$
vnoremap p "_dP
nnoremap x "_x
vnoremap x "_x
nnoremap s "_s
vnoremap s "_s
