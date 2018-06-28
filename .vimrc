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
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }

call plug#end()

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
" set spell

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

let g:syntastic_python_flake8_exe = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

function Py2()
      let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'
  endfunction

  function Py3()
        let g:syntastic_python_python_exec = '/usr/local/bin/python3.6'
    endfunction

    call Py3()   " default to Py3 because I try to use it when possible

autocmd BufWritePost *.ex :!mix format <afile>
autocmd BufWritePost *.exs :!mix format <afile>

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_enable_diagnostic_highlighting = 0

" " Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

autocmd BufWritePost *.js :Prettier <afile>

let g:NERDTreeWinSize=25

set runtimepath+=~/.vim/bundle/jshint2.vim/

autocmd BufRead,BufNewFile *.js setlocal spell
