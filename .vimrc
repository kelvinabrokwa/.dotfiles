set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()

set tabstop=2
set shiftwidth=2
set expandtab
set paste
set number
set ic
set showcmd

" backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set writebackup

syntax on

filetype plugin indent on

Bundle 'moll/vim-node'

execute pathogen#infect()

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

map <C-n> :NERDTreeToggle<CR>
nmap <leader>a :Ack

" syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']
let g:syntastic_javascript_checkers = ['eslint']


" theme
let g:molokai_original = 1

" macvim should stop being sassy and use my theme
let macvim_skip_colorscheme = 1

" say no to ex mode, boys and girls
nnoremap Q <nop>
