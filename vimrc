set t_Co=256
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'altercation/vim-colors-solarized'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'rking/ag.vim'

Plugin 'ternjs/tern_for_vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'HerringtonDarkholme/yats.vim'

call vundle#end()
filetype plugin indent on

set number
set ts=2
set so=30 " scroll off
set autoindent
set expandtab
set shiftwidth=2
set cursorline
set showmatch
let python_highlight_all = 1

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|bower_components)$'

" Airline Config
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'


" Solarized
syntax enable
set background=dark
colorscheme solarized

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" General
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
set autoread
set smartcase
set ignorecase
set exrc
