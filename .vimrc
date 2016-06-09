" VimPlug Setup
source ~/.vim/plugins.vim

" Leader
let mapleader = " "

" Options
syntax on

if has('mac')
  colorscheme alex
else
  colorscheme mine
endif

scriptencoding utf-8
set mouse+=a
set encoding=utf-8
set autoread
set autowrite
set backspace=2
set colorcolumn=+1
set expandtab
set hidden
set hlsearch
set incsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set noswapfile
set number
set numberwidth=3
set relativenumber
set ruler
set showcmd
set splitbelow
set splitright
set textwidth=110
set timeoutlen=1000 ttimeoutlen=10

if &term =~ '^screen'
  set ttymouse=xterm2 " tmux knows the extended mouse mode
endif

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
nnoremap c* *Ncgn
nnoremap <CR> :
vnoremap <CR> :
inoremap <c-a> <ESC>^i
inoremap <c-e> <ESC>$i

" Store relative line number jumps in the jumplist.
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

map      <Leader>b  :Buffers<CR>
map      <Leader>c  :noh<CR>
nmap     <Leader>e  :vsp ~/.vimrc<CR>
nmap     <Leader>ee :source ~/.vimrc<CR>
map      <Leader>f  :Ag<CR>
nnoremap <Leader>gs :sp /tmp/scratch<CR>
nnoremap <silent> <Leader>n :call mappings#cycle_numbering()<CR>
map      <Leader>p  :Files<CR>
map      <Leader>r  :BTags<CR>
map      <Leader>ra :call RunAllSpecs()<CR>
map      <Leader>rl :call RunLastSpec()<CR>
map      <Leader>rs :call RunNearestSpec()<CR>
map      <Leader>rt :call RunCurrentSpecFile()<CR>
nnoremap <Leader>sh :VtrOpenRunner {'orientation': 'v', 'percentage': 30}<cr>
map      <Leader>t  :Tags<CR>
map      <Leader>/  gcc
vmap     <Leader>/  gc
nnoremap <silent> <Leader>w :call mappings#zap()<CR>
nnoremap <Leader>z  :wincmd _<cr>:wincmd \|<cr>
nnoremap <Leader>Z  :wincmd =<cr>
nmap     <Leader><Tab> :b#<CR>

if has('mac')
  vmap  <Leader>y :w !pbcopy<CR><CR>
else
  vmap  <Leader>y  "+y
endif

" Make Yank behave
vnoremap y myy`y
vnoremap Y myY`y

" Remove Trailing Whitespace
autocmd BufWritePre !*.slim :%s/\s\+$//e
autocmd BufWritePre !*.md :%s/\s\+$//e

" Read/Save on Focus Change
autocmd FocusLost,WinLeave * :silent! update
autocmd CursorHold * checktime

if has('folding')
  set foldmethod=indent
  set foldlevelstart=99
endif

