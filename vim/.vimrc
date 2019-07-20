colo ron
syntax on

" Python settings
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"    \ match BadWhitespace /\s\+$/

set number " show line numbers
set showcmd " show command in bottom bar

set cursorline " highlight current line

filetype indent on " load filetype-specific indent files

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to

set showmatch " highlight matching [{()}]

set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","  " leader is comma

" todo: fzf (better cntrl p)
" todo: ag
" todo: multiple cursors
" todo: tab completion
" todo: vim slime?

" install vim-plug if not installed
if empty(glob("~/.vim/autoload/plug.vim"))
	:silent ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" vim.plug plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

" lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" nerdtree settings
map <C-o> :NERDTreeToggle<CR>
