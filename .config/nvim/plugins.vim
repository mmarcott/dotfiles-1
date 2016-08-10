set nocompatible
filetype off
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-user' 
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

Plug 'chrisbra/vim-zsh',                { 'for': 'zsh' }
Plug 'mattn/emmet-vim',                 { 'for': ['html', 'javascript.jsx'] }
Plug 'nelstrom/vim-textobj-rubyblock',  { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec',            { 'for': 'ruby' }
Plug 'tpope/vim-bundler',               { 'for': 'ruby' }
Plug 'tpope/vim-cucumber',              { 'for': 'ruby' }

if has('mac')
  Plug 'rizzatti/dash.vim'
  nmap <silent> <leader>d :Dash<CR>
endif

call plug#end()
filetype plugin indent on

" Colorscheme
  syntax on
  if has('termguicolors')
    set termguicolors
  endif
  colorscheme onedark

" RSpec.vim mappings
  let g:rspec_command = "VtrSendCommandToRunner! zeus rspec {spec}"

" Tmux Navigator
  " Send :update when leaving vim for tmux
  let g:tmux_navigator_save_on_switch = 1

" FZF
  " Layout
  let g:fzf_layout = { 'down': '~30%'  }

" EasyAlign
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

" Ultisnips Configuration
  " make YCM compatible with UltiSnips (using supertab)
  let g:SuperTabDefaultCompletionType = '<C-n>'

  " better key bindings for UltiSnipsExpandTrigger
  let g:UltiSnipsEditSplit="vertical"
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Syntastic
  let g:syntastic_ruby_checkers = ['rubocop']

" Use deoplete.
  let g:deoplete#enable_at_startup = 1
