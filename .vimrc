set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentline'
Plugin 'ryanoasis/vim-devicons'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'mhinz/vim-startify'

Plugin 'scrooloose/syntastic'
"Plugin 'w0rp/ale'

Plugin 'shougo/deoplete.nvim'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'zchee/deoplete-jedi'

Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-endwise'
Plugin 'raimondi/delimitmate'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'

Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

syntax on
set termguicolors
set number relativenumber
set autoindent
set smartindent
set incsearch
set hlsearch

if has("gui_macvim")
	set guifont=Hack\ Nerd\ Font
endif
set shiftwidth=4
set softtabstop=4
set tabstop=4
set encoding=utf-8
set mouse=a
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set completeopt-=preview

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

set fillchars+=vert:│
colorscheme onedark

" airline plugin
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1

" indentline plugin 
let g:indentLine_char = '┆'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_enabled = 1
let g:indentLine_fileType = ['python', 'c', 'cpp', 'html', 'css']

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

autocmd Filetype python setlocal tabstop=4 shiftwidth=4 sts=4 expandtab

" UltiSnips plugin
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" SuperTab plugin
let g:SuperTabDefaultCompletionType = '<C-n>'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_python_pylint_args = '--disable=C0103'
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✖'
let g:syntastic_style_error_symbol = '>'
let g:syntastic_warning_symbol = '!' " '⚠' 
let g:syntastic_style_warning_symbol = '>'
" ale plugin
" let g:ale_linters = {
" 			\ 'python': ['pylint'],
"			\}
"let g:ale_python_pylint_options = '--disable=C0103'
"let g:ale_lint_on_save = 1 "Lint when saving a file 
"let g:ale_sign_error = '✖' "Lint error sign 
"let g:ale_sign_warning = '⚠' "Lint warning sign 
"let g:ale_statusline_format =[' %d E ', ' %d W ', ''] "Status line texts 
" let g:ale_fixers = {'javascript': ['prettier', 'eslint']} "Fix eslint errors

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Key map
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>
