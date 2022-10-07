" All Basic Settings for vim/nvim
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
" set relativenumber
set laststatus=2
" set noshowmode

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'airblade/vim-gitgutter', { 'on':  ['VimEnter', 'BufReadPost'] }
" Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mileszs/ack.vim'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Github Copilot
Plug 'github/copilot.vim'

" Git Good plugin
Plug 'tpope/vim-fugitive'

" Help to change surround symbols
Plug 'tpope/vim-surround'

" Languages Support
Plug 'peitalin/vim-jsx-typescript'
Plug 'posva/vim-vue'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'elixir-editors/vim-elixir'

" Python Support
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'
Plug 'vim-scripts/indentpython.vim'

" Javascript/Typescript Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'HerringtonDarkholme/yats.vim'

" CSS Support
Plug 'ap/vim-css-color'
Plug 'styled-components/vim-styled-components'

" Tailwind CSS Support
Plug 'iamcco/coc-tailwindcss'

" C++ Support
Plug 'octol/vim-cpp-enhanced-highlight'

" C Support
Plug 'vim-scripts/c.vim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

let mapleader = " "
let NERDTreeQuitOnOpen = 1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
