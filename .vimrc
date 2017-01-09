set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'rstacruz/sparkup'
    Plugin 'tpope/vim-fugitive'
    Plugin 'mileszs/ack.vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'bling/vim-airline'
    Plugin 'mattn/emmet-vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'bling/vim-bufferline'
    Plugin 'jeetsukumaran/vim-buffergator'
    Plugin 'Yggdroot/indentLine'
    Plugin 'JuliaLang/julia-vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'mustache/vim-mustache-handlebars'
    Plugin 'fatih/vim-go'
    Plugin 'dracula/vim'
    Bundle 'gertjanreynaert/cobalt2-vim-theme'
    Bundle 'mattn/webapi-vim'
    Bundle 'chilicuil/vim-sprunge'
    Bundle 'lambdatoast/elm.vim'
    Bundle 'mattn/gist-vim'
    Bundle 'chase/vim-ansible-yaml'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on<Paste>

syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set nopaste
set number
set ic
set showcmd
set hlsearch
set incsearch
set noerrorbells
set showmode
set title
set autoindent
set cindent

" for js
autocmd FileType javascript setlocal ts=2 sw=2
autocmd FileType html setlocal ts=2 sw=2

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let mapleader='-'

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags<Paste>

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
let g:syntastic_python_pyflakes_exe = 'python3 -m pyflakes'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Configure airline
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" say no to ex mode, boys and girls
nnoremap Q <nop>

" buffergator
nmap <leader>j :BuffergatorMruCyclePrev<CR>
nmap <leader>k :BuffergatorMruCycleNext<CR>
nmap <leader>b :BuffergatorOpen<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>T :enew<CR>

" close buffer
nmap <leader>q :bdelete<CR>

" Indent line
let g:indentLine_color_term = 239
let g:indentLine_char = '│'

" theme
" colorscheme cobalt2

" buffer surfing
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

