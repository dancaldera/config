:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set syn=sh

call plug#begin()

" Base Plugins
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting using gcc & gc
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL+N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " need to install 'sudo apt install exuberant-ctags'
Plug 'https://github.com/neoclide/coc.nvim' " Autocompletion

" Auto Completion Plugins
Plug 'github/copilot.vim'

" Linting Plugins
Plug 'w0rp/ale'

call plug#end()

" Linting Config
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" Nerdtree Config

nnoremap <silent> <C-f> :NERDTreeFocus<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTree<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Tagbar Config

nnoremap <silent> <F8> :TagbarToggle<CR>

:set completeopt=preview

:colorscheme jellybeans

