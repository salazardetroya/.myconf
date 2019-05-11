" Rebind <Leader> key
let mapleader = " "
" Map keys for the buffers
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>
nnoremap <Leader>q :bd<CR>

" Ignore these files for the tab autocomplete
set wildignore=*.pyc,*aux

set ic " case insensitive
nnoremap <Leader>t :set hlsearch!<CR>

set cursorline " highlight current line

filetype plugin indent on

" highlight last inserted text
nnoremap gV `[v`]


imap jj <esc>

" FZF 
nnoremap <C-p> :GFiles<Cr>
nnoremap <Leader>o :Lines<Cr>
nnoremap <Leader>p :History<Cr>
nnoremap <Leader>[ :Buffers<Cr>
"let g:semshi#excluded_hl_groups = ['unresolved']

" Automatic reloading of init.vim
autocmd! bufwritepost ~/.config/nvim/init.vim source %

set shell=/bin/bash

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

let s:host_vimrc = $HOME . '/.' . hostname() . '.init.vim'                                                                                                                               
if filereadable(s:host_vimrc)                                                                                                                                                        
  execute 'source ' . s:host_vimrc                                                                                                                                                   
endif

" vim-airline config
" Leave the status line available for other plugins
"let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Tagbar
nmap <C-o> :TagbarToggle<CR>

" Showing line numbers and length
set number  " show line numbers
set relativenumber 
set tw=79   " width of document (used by gd)
set wrap 
set fo-=t   " don't automatically wrap text when typing
highlight ColorColumn ctermbg=233



call plug#begin('~/.local/share/nvim/plugged/')
""Plug 'arakashic/chromatica.nvim'
""Plug 'bbchung/Clamp'
""Plug 'octol/vim-cpp-enhanced-highlight'

 Plug 'christoomey/vim-tmux-navigator'
 Plug 'Valloric/YouCompleteMe'
 " PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'vim-airline/vim-airline'
 Plug 'easymotion/vim-easymotion'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tpope/vim-fugitive' " Needed for vim airline to show the branch
   " Both options are optional. You don't have to install fzf in ~/.fzf
   " and you don't have to run the install script if you use fzf only in Vim.
 Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
 Plug 'majutsushi/tagbar'
 " Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


Plug 'joshdick/onedark.vim'
Plug 'edkolev/tmuxline.vim'

Plug 'mileszs/ack.vim'

Plug 'rhysd/vim-grammarous'


Plug 'sjl/gundo.vim'

" Personal finances
Plug 'nathangrigg/vim-beancount'

Plug 'chrisbra/csv.vim'

call plug#end()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:airline_theme='luna'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:tmuxline_preset = 'tmux'
let g:tmuxline_theme = 'powerline'
let g:airline#extensions#tmuxline#enabled = 0
syntax on
colorscheme onedark

" Personal finances, ideally it should only work for .beancount
nnoremap <C-x><C-d> :r! date "+\%Y-\%m-\%d"<Cr>

nmap <Leader><Leader>w <Plug>(easymotion-w)
nmap <Leader><Leader>s <Plug>(easymotion-bd-w)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" For the highligh during search
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" toggle gundo
nnoremap <Leader>u :GundoToggle<CR>

" Language specific settings
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md :call <SID>StripTrailingWhitespaces()
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" Activate html tags
runtime macros/matchit.vim
