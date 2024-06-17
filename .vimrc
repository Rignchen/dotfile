set nocompatible
filetype on
filetype plugin on
syntax on

" SETTINGS {{{

" line relative line number with classic current line number
set number relativenumber
" line don't warp at the end of the line if it's too long
set nowrap
" search ignore case if the search pattern is all lowercase, otherwise case sensitive
set ignorecase smartcase
" highlight search results
set hlsearch
" use 4 spaces instead of tabs
set expandtab shiftwidth=4 smarttab
" deactivate mouse
set mouse=

" shell tab completion {{{
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}

" }}}

" PLUGINS {{{

call plug#begin('~/.vim/plugged')

" undo tree
Plug 'mbbill/undotree'
" lsp + completion
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" file explorer
Plug 'tpope/vim-vinegar'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" }}}

" MAPPINGS {{{

nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F2> :set number! relativenumber!<CR>
nnoremap <tab><tab> :FZF<CR>

" Disable "beginner" keys {{{

" Left
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

" Right
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

" Up
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
" inoremap <Up> <C-o>:echo "No up for you!"<CR> we need up and down for lsp

" Down
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
" inoremap <Down> <C-o>:echo "No down for you!"<CR> we need up and down for lsp

" Home
nnoremap <Home> :echo "No home for you!"<CR>
vnoremap <Home> :<C-u>echo "No home for you!"<CR>

" End
nnoremap <End> :echo "No end for you!"<CR>
vnoremap <End> :<C-u>echo "No end for you!"<CR>

" }}}

" }}}

" VIMSCRIPT {{{

command! -nargs=0 Clear :normal Gd:0<Enter>dd<CR>
"command! -nargs=0 WE :w<CR>:E<CR>

" LSP + completion {{{

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" }}}

" }}}

" FOLDING {{{

" vim files. The fold level is determined by {{{ and }}}
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" python files. The fold level is determined by indentation
augroup filetype_python
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
augroup END

" }}}

