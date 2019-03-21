" Rebind <Leader> key
let mapleader = " "
" Map keys for the buffers
nnoremap <Leader>h :bn<CR>
nnoremap <Leader>l :bp<CR>
nnoremap <Leader>q :bd<CR>

set ic " case insensitive
nnoremap <Leader>t :set hlsearch!<CR>

imap jj <esc>

" FZF 
nnoremap <C-p> :Files<Cr>

"let g:chromatica#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so'
"let g:chromatica#enable_at_startup=1
"let g:clamp_libclang_file='/usr/lib/llvm-6.0/lib/libclang.so'
"let g:clamp_highlight_mode = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_class_scope_highlight = 1
" Automatic reloading of init.vim
autocmd! bufwritepost ~/.config/nvim/init.vim source %

set shell=/bin/bash

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

let g:ycm_python_binary_path ='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
let g:ycm_server_python_interpreter = '/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7'
let g:ycm_path_to_python_interpreter='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'

let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
let g:python2_host_prog = '/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python'

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
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
highlight ColorColumn ctermbg=233



call plug#begin('~/.local/share/nvim/plugged/')
""Plug 'arakashic/chromatica.nvim'
""Plug 'bbchung/Clamp'
""Plug 'octol/vim-cpp-enhanced-highlight'


 Plug 'christoomey/vim-tmux-navigator'
 Plug 'Shougo/denite.nvim'
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
