set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'audibleblink/vim-airline-themes', { 'branch': 'papercolor-modes' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf',                    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock',  { 'for': 'ruby' }
Plug 'mhinz/vim-startify'
Plug 'othree/yajs.vim',                 { 'for': 'javascript' }
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim',             { 'for': 'javascript' }
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

if has('mac')
  Plug 'rizzatti/dash.vim'
  nmap <silent> <leader>d :Dash<CR>
endif

call plug#end()
filetype plugin indent on

" trucolor and italics info
" https://deductivelabs.com/en/2016/03/using-true-color-vim-tmux/
" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
syntax on
if has('termguicolors')
  set termguicolors
endif
colorscheme onedark
colorscheme alex " sets ruler and highlight colors only

" OneDark
  " enable italics
  let g:onedark_terminal_italics = 1

" RSpec.vim mappings
  " let g:rspec_command = "compiler rspec | set makeprg=spring | Make rspec {spec}"
  let g:rspec_command = "Dispatch rspec {spec}"

" Quickscope
  " Only quickscope when using f and t
  let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Tmux Navigator
  " Send :update when leaving vim for tmux
  let g:tmux_navigator_save_on_switch = 1

" The Silver Searcher
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
  let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  let g:SuperTabDefaultCompletionType = '<C-n>'

  " better key bindings for UltiSnipsExpandTrigger
  let g:UltiSnipsEditSplit="vertical"
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Startify
  let g:startify_enable_special         = 0
  let g:startify_files_number           = 5
  let g:startify_relative_path          = 1
  let g:startify_change_to_dir          = 1
  let g:startify_update_oldfiles        = 1
  let g:startify_session_autoload       = 1
  let g:startify_session_persistence    = 1
  let g:startify_session_delete_buffers = 1

  let g:startify_list_order = [
          \ [' Sessions'], 'sessions',
          \ [' Bookmarks'], 'bookmarks',
          \ [' Recently Used Files'], 'files',
          \ ]
  " let g:startify_list_order = ['sessions', 'bookmarks', 'files', 'dir', 'commands']
  let g:startify_skiplist = [ 'COMMIT_EDITMSG', ]
  let g:startify_bookmarks = [
              \ '~/Code/Medidata/dalton',
              \ '~/Code/Medidata/the_policy_machine',
              \ '~/.vimrc',
              \ '~/.vim/plugins.vim',
              \ '~/.zshrc',
              \ ]
  hi StartifyBracket ctermfg=240 guifg=#ffffff
  hi StartifyFile    ctermfg=147 guifg=#ffffff
  hi StartifyHeader  ctermfg=114 guifg=#ffffff
  hi StartifySlash   ctermfg=240 guifg=#ffffff
  hi StartifyNumber  ctermfg=240 guifg=#30D6F0
  hi StartifySection ctermfg=240 guifg=#30D6F0

