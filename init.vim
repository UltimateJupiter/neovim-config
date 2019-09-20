" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

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

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'wakatime/vim-wakatime'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Airline
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:Powerline_colorscheme='solarized256'

" Color Scheme
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Easy Align
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'

" Git
Plug 'airblade/vim-gitgutter'

" Easy Motion
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

" Auto-Complete
Plug 'roxma/nvim-completion-manager'

let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" Initialize plugin system
call plug#end()

" Nerd Tree Setup
map <C-h> :NERDTreeToggle<CR>

" Color Scheme Setup
syntax enable
"colorscheme solarized

let g:airline_powerline_fonts = 1
"let g:airline_theme='wombat'
let g:airline_theme='light'

" Tabline configurations
let g:airline#extensions#tabline#enabled = 1
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

set background=dark
colorscheme molokai

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

"nmap <F8> :TagbarToggle<CR>
"g:tagbar_ctags_bin

" UI Plugin
Plug 'rhysd/nyaovim-popup-tooltip'

