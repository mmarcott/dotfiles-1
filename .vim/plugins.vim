set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'chrisbra/vim-zsh', { 'for': 'zsh' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf',                    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-user' 
Plug 'nelstrom/vim-textobj-rubyblock',  { 'for': 'ruby' }
Plug 'mattn/emmet-vim',                 { 'for': ['html', 'javascript.jsx'] }
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'thoughtbot/vim-rspec',            { 'for': 'ruby' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-bundler',               { 'for': 'ruby' }
Plug 'tpope/vim-cucumber',              { 'for': 'ruby' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'Shougo/deoplete.nvim'

if has('mac')
  Plug 'rizzatti/dash.vim'
  nmap <silent> <leader>d :Dash<CR>
endif

call plug#end()
filetype plugin indent on

" Colorscheme
  " trucolor and italics info
  " https://deductivelabs.com/en/2016/03/using-true-color-vim-tmux/
  " https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
  syntax on
  if has('termguicolors')
    set termguicolors
  endif
  colorscheme onedark
  " colorscheme alex " sets ruler and highlight colors only

" Vim Tmux Runner
  let g:VtrUseVtrMaps = 1
  " The following normal mode maps are provided when g:VtrUseVtrMaps is set to 1:
  "   Mapping      |   Command
  "   -----------------------------
  "   <leader>rr   |   VtrResizeRunner<cr>
  "   <leader>ror  |   VtrReorientRunner<cr>
  "   <leader>sc   |   VtrSendCommandToRunner<cr>
  "   <leader>sl   |   VtrSendLinesToRunner<cr>
  "   <leader>or   |   VtrOpenRunner<cr>
  "   <leader>kr   |   VtrKillRunner<cr>
  "   <leader>fr   |   VtrFocusRunner<cr>
  "   <leader>dr   |   VtrDetachRunner<cr>
  "   <leader>ar   |   VtrReattachRunner<cr>
  "   <leader>cr   |   VtrClearRunner<cr>
  "   <leader>fc   |   VtrFlushCommand<cr>
  "
  "   Mapping      |   Command
  "   -----------------------------
  "   <leader>sv   |   VtrSendSelectedToRunner<cr>

" RSpec.vim mappings
  let g:rspec_command = "VtrSendCommandToRunner! zeus rspec {spec}"

" Quickscope
  " Only quickscope when using f and t
  let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Tmux Navigator
  " Send :update when leaving vim for tmux
  let g:tmux_navigator_save_on_switch = 1

" Airline
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'tomorrow'

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
  "
  let g:syntastic_ruby_checkers = ['rubocop']

  let g:deoplete#enable_at_startup = 1
