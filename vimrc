set encoding=utf8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'

Plugin 'rking/ag.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'jszakmeister/vim-togglecursor'

" Javascript / Typescript / C / Go / Python / Rust
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'

" Java
Plugin 'artur-shaik/vim-javacomplete2'

" Javascript
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'HerringtonDarkholme/yats.vim'

" Go
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable

" colorscheme
set background=dark
colorscheme solarized

" ctrlp
"let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|bower_components)$'
if executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
  " and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" statusbar
set laststatus=2
" vim-airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='solarized'
"let g:airline_powerline_fonts = 1
" powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" vim-javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" javascript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

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
