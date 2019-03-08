imap jj <esc>
"let g:chromatica#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so'
"let g:chromatica#enable_at_startup=1
"let g:clamp_libclang_file='/usr/lib/llvm-6.0/lib/libclang.so'
"let g:clamp_highlight_mode = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1

call plug#begin('~/.local/share/nvim/plugged/')
""Plug 'arakashic/chromatica.nvim'
""Plug 'bbchung/Clamp'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
