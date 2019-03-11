" Rebind <Leader> key
let mapleader = " "
" Map keys for the buffers
nnoremap <Leader>h :bn<CR>
nnoremap <Leader>l :bp<CR>
nnoremap <Leader>q :bd<CR>

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

let g:ycm_python_binary_path = '/usr/bin/python3.6'
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'

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
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive' " Needed for vim airline to show the branch
  " Both options are optional. You don't have to install fzf in ~/.fzf
  " and you don't have to run the install script if you use fzf only in Vim.
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'majutsushi/tagbar'
call plug#end()

