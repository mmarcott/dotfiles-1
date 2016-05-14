" Vundle Setup
source ~/.vim/.vimrc.bundles

" Leader
let mapleader = " "

" Options
set t_Co=256
syntax on

if has('mac')
  colorscheme alex
else
  set background=dark
  colorscheme mine
endif

scriptencoding utf-8
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

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
noremap J jzz
noremap K kzz
nnoremap c* *Ncgn
nnoremap <CR> :
vnoremap <CR> :

" Store relative line number jumps in the jumplist.
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

map      <Leader>a  :call RunAllSpecs()<CR>
nmap     <Leader>e  :vsp ~/.vimrc<CR>
map      <Leader>c  :noh<CR>
nmap     <Leader>ee :source ~/.vimrc<CR>
nnoremap <Leader>gs :sp /tmp/scratch<CR>
noremap  <Leader>j  J
map      <Leader>l  :call RunLastSpec()<CR>
map      <Leader>r  :CtrlPTag<CR>
nnoremap <leader>sh :VtrOpenRunner {'orientation': 'v', 'percentage': 30}<cr>
map      <Leader>s  :call RunNearestSpec()<CR>
map      <Leader>t  :call RunCurrentSpecFile()<CR>
map      <Leader>/  gcc
vmap     <Leader>/  gc
nnoremap <leader>z  :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>Z  :wincmd =<cr>
nmap     <Leader><Tab> :b#<CR>

if has('mac')
  vmap  <Leader>y :w !pbcopy<CR><CR>
else
  vmap  <Leader>y  "+y
endif


" let g:AutoPairsFlyMode = 1

" Only quickscope when using f and t
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Send :update when leaving vim for tmux
let g:tmux_navigator_save_on_switch = 1

" CtrlP Options
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'top,order:ttp,min:1,max:10'
let g:ctrlp_mruf_relative = 1

" Make Yank behave
vnoremap y myy`y
vnoremap Y myY`y

" RSpec.vim mappings
" let g:rspec_command = "compiler rspec | set makeprg=spring | Make rspec {spec}"
" let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_command = ':call Send_to_Tmux("clear && spring rspec {spec}\n")'

" Use The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Remove Trailing Whitespace
autocmd BufWritePre !*.slim :%s/\s\+$//e
autocmd BufWritePre !*.md :%s/\s\+$//e

" Read/Save on Focus Change
autocmd FocusLost,WinLeave * :silent! update
autocmd CursorHold * checktime

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(sh ~/.dotfiles/.tmux/functions/wifi.sh)',
      \'y'    : '#(sh ~/.dotfiles/.tmux/functions/battery.sh)',
      \'z'    : ['%R', '%a', '%d.%b.%y']}
