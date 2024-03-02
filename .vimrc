" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
" Add relative numbers to each line on the left-hand side.
set relativenumber
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Always display statusline.
set laststatus=2
" Format of the statusline.
set statusline=%f\ -\ FileType:\ %y
set statusline+=%=
set statusline+=%l\ /\ %L


" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
set expandtab
" Draw column relative to textwidth.
set colorcolumn=+1
" Control wrap width.
set textwidth=160
" Turn on auto-indent.
set autoindent

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
let w:xws = call('matchadd', ['ExtraWhitespace', '\s\+$'])
highlight UnknownPlaceholder ctermbg=red guibg=red
let w:uph = call('matchadd', ['UnknownPlaceholder', '\([XYZ?]\)\1\+'])

" Enable usage of clipboard
set clipboard=unnamedplus
" Allow usage of internal clipboard
set clipboard+=unnamed
