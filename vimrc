set t_Co=256
"""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'gmarik/vundle'
" General stuff
" duh
Bundle 'bling/vim-airline'

" ctrl-p!
Bundle 'kien/ctrlp.vim'

"not skilled enough for this
"Bundle 'Shougo/unite.vim' 

" silversearcher-ag
Bundle 'rking/ag.vim'

"autocompletion, needs to be compiled as well
Bundle 'Valloric/YouCompleteMe'

"tab completion
Bundle 'ervandew/supertab'

"generally not needed
Bundle 'altercation/vim-colors-solarized'

" tags on the right, requires 'exuberant-ctags' package
Bundle 'majutsushi/tagbar'

" somewhat duplicates ycm
"Bundle 'scrooloose/syntastic'

"File tree browser
Bundle 'scrooloose/nerdtree'

"sweet but pro
Bundle 'godlygeek/tabular'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Javascript / Web stuff
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'

" Git stuff
Bundle 'tpope/vim-fugitive'
Bundle 'suan/vim-instant-markdown'

" Ruby stuff
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'


call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""
" Solarized Settings
syntax enable
syntax on
set background=dark
"colorscheme solarized
"""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""
" Powerline Settings
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set rtp+=~/Packages/powerline/bindings/vim
"set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""
" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
"let g:airline_enable_syntastic = 1
"let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'

let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|components)$'
"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""
" Unite
"let g:unite_source_history_yank_enable = 1
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
"nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
"nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
"nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
"" Custom mappings for the unite buffer
"autocmd FileType unite call s:unite_settings()
"function! s:unite_settings()
"    " Play nice with supertab
"    let b:SuperTabDisabled=1
"    " Enable navigation with control-j and control-k in insert mode
"    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
"endfunction
"""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
"""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""
" Tagbar
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""


" Line Numbers
set number
set cursorline
"au WinLeave * set nocursorline nocursorcolumn
"au WinLeave * set cursorline cursorcolumn
"hi CursorLine cterm=None ctermbg=grey


" Other Settings
set history=5000
set ruler
set autoread
set ignorecase
set smartcase
set exrc "load local vimrc

" Tabstop, Shiftwidth
set ts=2
set sw=2
set et
set sts=2
set ai


autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype coffeescript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" Python
" Jumping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
