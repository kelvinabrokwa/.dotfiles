set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Bundle 'gertjanreynaert/cobalt2-vim-theme'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Plugin 'bling/vim-bufferline'
Plugin 'jeetsukumaran/vim-buffergator'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set paste
set number
set ic
set showcmd
set cursorline
set hlsearch
set incsearch
set noerrorbells
set showmode
set title

let mapleader='-'

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

map <C-n> :NERDTreeToggle<CR>
nmap <leader>a :Ack

"nnoremap <silent> <esc> :noh<cr><esc>

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

" Configure airline
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" say no to ex mode, boys and girls
nnoremap Q <nop>

" theme
colorscheme cobalt2

" buffergator
nmap <leader>j :BuffergatorMruCyclePrev<CR>
nmap <leader>k :BuffergatorMruCycleNext<CR>
nmap <leader>b :BuffergatorOpen<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>T :enew<CR>

" for `gf` in js
set suffixesadd+=.js

