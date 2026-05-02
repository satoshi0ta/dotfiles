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
set rtp+=/opt/homebrew/opt/fzf

inoremap <silent> jj <ESC>
noremap x "_x
noremap s "_s
noremap ; :
noremap : :
nnoremap j gj
nnoremap k gk
noremap <S-h> ^
noremap <S-l> $
noremap <S-j> <Nop>
nnoremap Y y$
vnoremap p "_dP
