" Vundle Setup
source ~/.dotfiles/.vimrc.bundles

" Leader
let mapleader = " "

" Options
syntax on
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
set numberwidth=4
set splitbelow
set splitright
set number
set relativenumber
set ruler
set hlsearch

" Custom Mappings
inoremap jk <ESC>
cnoremap jk <ESC>
noremap 0 ^
nmap <Leader>v :vsp ~/.vimrc<CR>

" CtrlP Options
map  <Leader>r :CtrlPTag<CR>
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'top,order:ttp,min:1,max:8'

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" RSpec.vim mappings
let g:rspec_command = ':w | :call Send_to_Tmux("clear && spring rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Remove Trailing Whitespace
autocmd BufWritePre !*.slim :%s/\s\+$//e
autocmd BufWritePre !*.md :%s/\s\+$//e

" Colors
highlight Pmenu ctermfg=15 ctermbg=237
highlight PmenuSel ctermfg=16 ctermbg=51
highlight ColorColumn ctermbg=24
highlight VertSplit ctermbg=0 ctermfg=0
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff',  }
function BrightHighlightOn()
  hi CursorLine ctermbg=cyan ctermfg=16
endfunction
function BrightHighlightOff()
  hi CursorLine ctermbg=none
endfunction

" Traitional Copy/Paste
vnoremap <C-S-c> :w !pbcopy<CR><CR>
noremap <C-S-v> :r !pbpaste<CR><CR>

" Read/Save on Focus Change
autocmd FocusLost,WinLeave * :silent! w
autocmd FocusGained,BufEnter * :silent! !
