
" Basic Config
syntax on
set number 
set noswapfile 

" Indent
set autoindent
set expandtab
set tabstop=4

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Appearance
"set laststatus=2
set ruler
set noerrorbells
set visualbell
set title

set termguicolors

" Startup Config 
autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * GitGutterEnable 
autocmd VimEnter * GitGutterSignsEnable

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" mappings
let mapleader = " "
nnoremap <Leader>p <C-w>p
nnoremap <Leader>c <C-w>c
nnoremap <Leader>e :qa!<CR>

set backspace=indent,eol,start 

" Colors 
let theme = 'catppuccin_mocha'
execute 'autocmd VimEnter * colorscheme' . ' ' . theme
let g:lightline = {'colorscheme': theme} 

" YouCompleteMe settings
" Use homebrew's clangd
"let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

" Vim Plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'tpope/vim-fugitive'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

