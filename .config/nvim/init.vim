set nocompatible
filetype on
filetype plugin on
syntax on

" SETTINGS {{{

" show line numbers (relative and absolute)
set number relativenumber
" show line numbers in directories
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
" line don't warp at the end of the line if it's too long
set nowrap
" search ignore case if the search pattern is all lowercase, otherwise case sensitive
set ignorecase smartcase
" highlight search results
set hlsearch
" use 4 spaces instead of tabs
set shiftwidth=4 smarttab
"set expandtab
" make tabs 4 spaces wide
set tabstop=4
" deactivate mouse
set mouse=
" Go to the last position when opening a file
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Don't autho change line break character
set nofixeol

" shell tab completion {{{
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}

" }}}

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




