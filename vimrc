" use visual bell instead of beeping
set vb

set background=dark

set spellfile=~/.vimspellfile.utf8.add 


:autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

" Set the cur dir to the dir of the current file
set autochdir

" Disable mouse stuff
set mouse=

set linebreak
set number

set bg=dark

" Set dir to open file
autocmd FileType cpp set path=/home/igood/apps/BackendCommon/source

" incremental search
set incsearch

" highlight search results
set hlsearch

" Highlight current line
set nocursorline

" Default s///g
set gdefault

" Give Vim control of window title
set title

" syntax highlighting
colorscheme elflord
set bg=dark
syntax on

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"     Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmethod=indent " Make folding indent sensitive
" set foldlevel=0 " autofold 
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels
    


" autoindent
set autoindent|set smartindent
autocmd FileType cpp set cindent

" Append an EOL to last line
autocmd FileType cpp set endofline

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line
set noruler


" 4 space tabs
autocmd FileType cpp set tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType perl set tabstop=4 shiftwidth=4 softtabstop=4
set noexpandtab
set smarttab

" show matching brackets
set showmatch

" show line numbers
autocmd FileType perl set number
autocmd FileType cpp set number

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" autocmd FileType *.tt set filetype=html
autocmd BufNewFile,BufRead *.tt set filetype=html

" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
" nmap <tab> I<tab><esc>
" nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" Folding:
autocmd FileType cpp set foldmethod=syntax
let perl_fold=1
let perl_fold_blocks=1

" Highlight POD correctly:
let perl_include_pod = 1

set nobackup


:set nocompatible
