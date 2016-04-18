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
  colorscheme mine
endif

set autoread
set colorcolumn=100
set expandtab
set hidden
set hlsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set noswapfile
set number
set numberwidth=3
set relativenumber
set ruler
set shiftround
set shiftwidth=2
set splitbelow
set splitright
set tabstop=2
set textwidth=110

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
inoremap <C-a> <ESC>I
inoremap <C-e> <ESC>A
noremap <C-a> I
noremap <C-e> A
noremap J jzz
noremap K kzz

map     <Leader>a  :call RunAllSpecs()<CR>
nmap    <Leader>e  :vsp ~/.vimrc<CR>
map     <Leader>c  :noh<CR>
nmap    <Leader>ee :source ~/.vimrc<CR>
noremap <Leader>j  J
map     <Leader>l  :call RunLastSpec()<CR>
map     <Leader>r  :CtrlPTag<CR>
map     <Leader>s  :call RunNearestSpec()<CR>
map     <Leader>t  :call RunCurrentSpecFile()<CR>
map     <Leader>/  gcc
vmap    <Leader>/  gc
if has('mac')
  vmap  <Leader>y  "*y
else
  vmap  <Leader>y  "+y
endif

" Send :update when leaving vim for tmux
let g:tmux_navigator_save_on_switch = 1

" CtrlP Options
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'top,order:ttp,min:1,max:10'

" RSpec.vim mappings
let g:rspec_command = ":w | Dispatch rspec {spec}"
" let g:rspec_command = ':w | :call Send_to_Tmux("clear && rspec {spec}\n")'

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
