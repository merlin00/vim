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
Plugin 'valloric/youcompleteme'

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
" Plugin 'jshint/jshint'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'yannickcr/eslint-plugin-react'
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
set listchars=tab:\┆\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
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
let g:indentLine_fileType = ['python']

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2

" for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

autocmd Filetype python setlocal tabstop=4 shiftwidth=4 sts=4 expandtab

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/doc/*,*/docs/*,*/node_modules/*,*.pyc    " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:python3_host_prog = '/usr/local/bin/python3'

" YCM
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_python_binary_path = 'python'

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
 
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']
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

" Key map
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>
