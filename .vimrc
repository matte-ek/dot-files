" Save file as sudo with uppercase :W
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" General
set relativenumber
set termguicolors

syntax enable
colorscheme catppuccin_mocha

" Sets transparent background
hi Normal guibg=NONE ctermbg=NONE

" Identation
set expandtab
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
