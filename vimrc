syntax enable
filetype plugin indent on
colorscheme peachpuff

set showcmd
set hlsearch
set ruler
set number
set autoindent
set smartindent
set laststatus=2
set encoding=utf-8
set statusline=%F%m%r%h%w\ {%Y}%=[%l/%L,%v]\ \-\ [%p%%]\ \|\ %{strftime(\"%Y/%m/%d\ -\ %H:%M\")}

noremap <F2> :w<CR>
noremap <F10> :q<CR>
noremap <C-L> :!/usr/bin/gcc -Wall -g %<CR>
noremap <C-P> :!/usr/bin/python3 %<CR>
noremap <C-B> :!/bin/bash %<CR>

hi StatusLine cterm=NONE ctermbg=blue ctermfg=green
au InsertEnter * hi StatusLine ctermbg=red
au InsertLeave * hi StatusLine ctermbg=blue

autocmd FileType python setlocal tabstop=8 expandtab softtabstop=4 shiftwidth=4
autocmd FileType c setlocal noexpandtab tabstop=8 shiftwidth=8

