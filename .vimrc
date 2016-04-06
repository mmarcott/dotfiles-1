" Vundle Setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.dotfiles/.vimrc.bundles
call vundle#end()
filetype plugin indent on

" Leader
let mapleader = " "

" Options
syntax on
set textwidth=100
set shiftwidth=2
set tabstop=2
set hidden
set nobackup
set noswapfile
set tabstop=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:·
set numberwidth=4
set splitbelow
set splitright
set number
set relativenumber
set cursorline

" Be a good .git user
augroup gitcommit
  autocmd!
  au FileType gitcommit set tw=50
augroup END


" Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
nnoremap 0 ^

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" YouCompleteMe Colors
highlight Pmenu ctermfg=15 ctermbg=237
highlight PmenuSel ctermfg=16 ctermbg=51
