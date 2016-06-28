" VimPlug Setup
source ~/.vim/plugins.vim

scriptencoding utf-8
set mouse+=a
set encoding=utf-8
set autoread
set autowrite
set backspace=2
set colorcolumn=+1
set cursorcolumn
set cursorline
set expandtab
set foldlevelstart=99
set foldmethod=indent
set hidden
set hlsearch
set incsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set noswapfile
set nowrap
set number
set numberwidth=3
set relativenumber
set ruler
set showcmd
set splitbelow
set splitright
set textwidth=109
set timeoutlen=1000 ttimeoutlen=10
set wiw=120

if &term =~ '^xterm'
  set ttymouse=xterm2 " tmux knows the extended mouse mode
endif

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
nnoremap qf :copen<CR>:wincmd _<CR>:wincmd \|<CR>
nnoremap qc :cclose<CR>:wincmd =<CR>
nnoremap c* *Ncgn
nnoremap <CR> :
vnoremap <CR> :

" Unmap Enter in the quickfix window
au BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Store relative line number jumps in the jumplist.
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
"
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

" Leader Mappings
let mapleader = " "
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
  vnoremap  <Leader>y "*y
  nnoremap  <Leader>u "*p
else
  vnoremap  <Leader>y  "+y
  nnoremap  <Leader>u  "+u
endif

" Make Yank behave
vnoremap y myy`y
vnoremap Y myY`y

" Read/Save on Focus Change
autocmd FocusLost,WinLeave * :silent! update
autocmd CursorHold * checktime

let &colorcolumn="109,".join(range(109,999),",")
