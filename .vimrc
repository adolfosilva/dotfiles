set tabstop=3

execute pathogen#infect()

set number relativenumber
set nonumber norelativenumber " turn hybrid line members off
set number! relativenumber! " toogle hybrid line numbers

let g:rustfmt_autosave = 1

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'junegunn/goyo.vim'

colorscheme gruvbox
set bg=dark
highlight Normal ctermbg=NONE

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set spelllang=en
set spell

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

autocmd FileType gitcommit setlocal spell
autocmd BufNewFile,BufRead *.cy set syntax=haskell

let g:elm_format_autosave = 1

command Latex execute "silent !pdflatex % > /dev/null && evince %:r.pdf > /dev/null 2>&1 &" | redraw!

nnoremap <C-n> :bp<CR>
nnoremap <C-m> :bn<CR>

let g:syntastic_python_pyflakes_exe = 'python3 -m pyflakes'

autocmd BufWritePost *.ex :!mix format <afile>
autocmd BufWritePost *.exs :!mix format <afile>

let g:NERDTreeWinSize=25
