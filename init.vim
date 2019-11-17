" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
set nohlsearch
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set cursorline

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'yggdroot/indentline'
Plug 'wakatime/vim-wakatime'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Airline
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:Powerline_colorscheme='solarized256'

" Color Scheme
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'joshdick/onedark.vim'

" Formatting
Plug 'elzr/vim-json'
Plug 'chrisbra/csv.vim'

" Editing
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'severin-lemaignan/vim-minimap'
"...

"Finding
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'yuttie/comfortable-motion.vim'

" Plugin options
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Easy Align
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'

" Git
Plug 'airblade/vim-gitgutter'

" Easy Motion
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

" Auto-Complete
" Plug 'roxma/nvim-completion-manager'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'

let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/Users/jupiter/anaconda3/bin/python3'
" Initialize plugin system
call plug#end()

" Nerd Tree Setup
map <C-h> :NERDTreeToggle<CR>

" Color Scheme Setup
" syntax enable
"colorscheme solarized

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
syntax on
colorscheme onedark

let g:airline_powerline_fonts = 1
"let g:airline_theme='wombat'
"let g:airline_theme='light'

" Tabline configurations
let g:airline#extensions#tabline#enabled = 1
nmap <leader>t :TagbarToggle<CR>
"set g:tagbar_ctags_bin

nmap ] :bn<CR>
nmap [ :bp<CR>
nmap <leader>1 :bfirst<CR>
nmap <leader>2 :bfirst<CR>:bn<CR>
nmap <leader>3 :bfirst<CR>:2bn<CR>
nmap <leader>4 :bfirst<CR>:3bn<CR>
nmap <leader>5 :bfirst<CR>:4bn<CR>
nmap <leader>6 :bfirst<CR>:5bn<CR>
nmap <leader>7 :bfirst<CR>:6bn<CR>
nmap <leader>8 :bfirst<CR>:7bn<CR>
nmap <leader>9 :bfirst<CR>:8bn<CR>
nmap <leader>10 :bfirst<CR>:9bn<CR>
nmap <leader>11 :bfirst<CR>:10bn<CR>

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" let g:indent_guides_enable_on_vim_startup = 1
let g:ale_completion_enabled = 1
let b:ale_linters = {'python': ['mypy']}

let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0

"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"Ctrip
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

