syntax on

set number " show line numbers
set showcmd " show command in bottom bar

set cursorline " highlight current line

filetype plugin indent on " filetype indentation and plugin files

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to

set showmatch " highlight matching [{()}]

let mapleader=","  " leader is comma

""" tab and shift tab remapping to work like normal text editor
" for visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" for command mode
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

set incsearch " search as characters are entered
set hlsearch " highlight matches

nnoremap <leader><space> :nohlsearch<CR>

" split below and right
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" only need one esc press to exit visual mode
set timeoutlen=1000 ttimeoutlen=0

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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" nerdtree settings
nnoremap <C-o> :NERDTreeToggle<CR>

" fzf settings
nnoremap<C-p> :Files<CR>

" gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"highlight Normal ctermbg=0 "to get true black background
