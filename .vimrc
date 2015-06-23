set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()

syntax on

filetype plugin indent on

set tabstop=2

set shiftwidth=2

set expandtab

set paste

set number

Bundle 'moll/vim-node'

execute pathogen#infect()

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
