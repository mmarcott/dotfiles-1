runtime macros/matchit.vim

set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'audibleblink/vim-airline-themes', { 'branch': 'papercolor-modes' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'edkolev/tmuxline.vim'
Plug 'jgdavey/tslime.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf',                    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock',  { 'for': 'ruby' }
Plug 'othree/yajs.vim',                 { 'for': 'javascript' }
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'thoughtbot/vim-rspec',            { 'for': 'ruby' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-dispatch',              { 'on': 'Dispatch' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'unblevable/quick-scope'
Plug 'Valloric/YouCompleteMe',          { 'do': './install.py'  }
Plug 'vim-airline/vim-airline'
Plug 'vim-ruby/vim-ruby',               { 'for': 'ruby' }

let g:onedark_terminal_italics = 1

if has('mac')
  Plug 'rizzatti/dash.vim'
  nmap <silent> <leader>d <Plug>Dash
endif
call plug#end()
filetype plugin indent on

" RSpec.vim mappings
" let g:rspec_command = "compiler rspec | set makeprg=spring | Make rspec {spec}"
let g:rspec_command = "Dispatch rspec {spec}"
" let g:rspec_command = ':call Send_to_Tmux("clear && spring rspec {spec}\n")'

" Only quickscope when using f and t
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Send :update when leaving vim for tmux
let g:tmux_navigator_save_on_switch = 1

" Use The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

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

let g:fzf_layout = { 'down': '~30%'  }

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
