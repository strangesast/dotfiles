set encoding=utf8
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'

Plugin 'rking/ag.vim'

" Javascript / Typescript / C / Go / Python / Rust
Plugin 'Valloric/YouCompleteMe'

" Java
Plugin 'artur-shaik/vim-javacomplete2'

" Javascript
Plugin 'ternjs/tern_for_vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'HerringtonDarkholme/yats.vim'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|bower_components)$'

" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

" vim-javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" general
set number
set ignorecase
set so=30
set smartcase
set expandtab
set exrc
set shiftwidth=4
set tabstop=4

" better window behavior
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
set autoread
