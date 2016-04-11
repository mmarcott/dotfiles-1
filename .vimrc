" Vundle Setup
source ~/.dotfiles/.vimrc.bundles

" Leader
let mapleader = " " 
" Options
syntax on

colorscheme alex
set mouse=a
set textwidth=100
set colorcolumn=100
set shiftwidth=2
set hidden
set autoread
set nobackup
set noswapfile
set tabstop=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:·
set numberwidth=3
set splitbelow
set splitright
set number
set relativenumber
set ruler
set hlsearch
set laststatus=2
set autoread

" Custom Mappings
  inoremap jk <ESC>
  cnoremap jk <ESC>
  noremap J jzz
  noremap K kzz
  noremap 0 ^
  " spec runners
  map  <Leader> t :call RunCurrentSpecFile()<CR>
  map  <Leader> s :call RunNearestSpec()<CR>
  map  <Leader> l :call RunLastSpec()<CR>
  map  <Leader> a :call RunAllSpecs()<CR>
  " vimrc edit/source
  nmap <Leader> e :vsp ~/.vimrc<CR>
  nmap <Leader> ee :source ~/.vimrc<CR>
  " copy/paste
  map  <Leader> c :w !pbcopy<CR> <CR>
  map  <Leader> v :r !pbpaste<CR> <CR>
  " deafult ctrlp command
  map  <Leader> r :CtrlPTag<CR>
  " Quicker window movement
  nnoremap <C-j> <C-w> j
  nnoremap <C-k> <C-w> k
  nnoremap <C-h> <C-w> h
  nnoremap <C-l> <C-w> l

" CtrlP Options
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'top,order:ttp,min:1,max:8'


" RSpec.vim mappings
let g:rspec_command = ':w | :call Send_to_Tmux("clear && spring rspec {spec}\n")'

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
autocmd FocusLost,WinLeave * :silent! w
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
