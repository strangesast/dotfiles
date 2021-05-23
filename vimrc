set encoding=utf8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'powerline/powerline'

Plugin 'ctrlpvim/ctrlp.vim'

"Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'

Plugin 'rking/ag.vim'

"Plugin 'christoomey/vim-tmux-navigator'

"Plugin 'jszakmeister/vim-togglecursor'

"Plugin 'tpope/vim-fugitive'

Plugin 'mattn/emmet-vim'

" Markdown preview
Plugin 'iamcco/markdown-preview.nvim'

" Javascript / Typescript / C / Go / Python / Rust
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim'
Plugin 'evanleck/vim-svelte'
Plugin 'leafOfTree/vim-svelte-plugin'

" Java
Plugin 'artur-shaik/vim-javacomplete2'

" Kotlin
Plugin 'udalov/kotlin-vim'

" Rust
Plugin 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" Javascript
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'

" Html
" htmlhint (npm install -g htmlhint)
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'prettier/vim-prettier'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1

" Python
"Plugin 'davidhalter/jedi-vim' "youcompleteme uses jedi, so this is redundant
" Go
Plugin 'fatih/vim-go'

" C/C++
Plugin 'rhysd/vim-clang-format' " package clang-format required
autocmd FileType c ClangFormatAutoEnable


call vundle#end()            " required
filetype plugin indent on    " required
syntax enable

" colorscheme
"set background=dark
"colorscheme solarized

" ctrlp
"let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|bower_components)$'
let g:ctrlp_working_path_mode = 0
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

" general
set noswapfile
set number
set ignorecase
"set so=20
set smartcase
set expandtab
set exrc
set secure
set shiftwidth=2
set tabstop=2

" statusbar
set laststatus=2
" vim-airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" powerline
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" ALE
let g:ale_echo_msg_format = '%linter% says %s'
let g:ale_c_parse_compile_commands=1
"let g:ale_c_build_dir='build'
let g:ale_c_build_dir = "./build"
"    \    '*': ['remove_trailing_lines', 'trim_whitespace'],
let g:ale_fixers = {
    \    'javascript': ['eslint', 'prettier'],
    \    'python': ['black']
    \}
let g:ale_fix_on_save = 1

" svelte
let g:vim_svelte_plugin_load_full_syntax = 1


" nerdtree
map <C-n> :NERDTreeToggle<CR>

" go
autocmd Filetype go setlocal expandtab!

" java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"ts=2 sts=2 sw=2
let g:JavaComplete_ImportDefault = -1
let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'com.', 'org.', 'net.']
let g:JavaComplete_ImportSortType = 'packageName'

" javascript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" python
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" better window behavior
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
set autoread
