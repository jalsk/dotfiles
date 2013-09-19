set nocompatible
set autoindent
set smartindent
set ts=4 sw=4
set showmatch
set incsearch
highlight Comment ctermfg=yellow
"set w!! to automatically save the file in sudo
cmap w!! w !sudo tee % >/dev/null
set pastetoggle=<F10>
