set nocompatible

" Overall look and feel
set number
set relativenumber
set cursorline
set laststatus=2
set statusline=%f

" Default indentation and textwidth
set colorcolumn=+1
set textwidth=160
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Search settings
set incsearch

" Highlighting
syntax on
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
let w:xws = call('matchadd', ['ExtraWhitespace', '\s\+$'])
" highlight SquishedCommas ctermbg=red guibg=red
" let w:sc = call('matchadd', ['SquishedCommas', '\d\@!,\(\s|\d\)\@!\($\)\@!'])
highlight UnknownPlaceholder ctermbg=red guibg=red
let w:uph = call('matchadd', ['UnknownPlaceholder', '\([XYZ?]\)\1\+'])

