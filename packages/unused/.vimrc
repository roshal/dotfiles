set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'lilydjwg/colorizer'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maralla/validator.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

""""""" Disabling Arrow keys
"nnoremap <up>    <nop>
"nnoremap <down>  <nop>
"nnoremap <left>  <nop>
"nnoremap <right> <nop>
"inoremap <up>    <nop>
"inoremap <down>  <nop>
"inoremap <left>  <nop>
"inoremap <right> <nop>

"Open NERDTree when no files specified"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Open NEDRTree when opening directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif "

noremap <C-m> :NERDTreeToggle<CR>

" Multicursor mapping
" let g:multi_cursor_next_key='+'
" let g:multi_cursor_prev_key='-'
" let g:multi_cursor_skip_key='/'

" Validator settings
let g:validator_python_checkers = ['flake8']

" Airline settings
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.notexists = '∄'

" Vim settings
set number
set relativenumber
syntax on
set cindent
set smartindent
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Place cursor in previous place
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

