set et                                                                                                                                                                                                                                                                        
set ts=2
set sw=2
set ai
set ci
set si
set ml
set nu
set ic
set is
color delek
set fdm=syntax
set hlsearch
set autoindent
set cul 
set sm  
set tabstop=2
set undolevels=1000
set noswapfile
"disable all blinking"
"set guicursor+=n-v-c:blinkon0 
""set insert cursor to thin -> 25% width"
"set guicursor+=i:ver25-iCursor 
""set insert cursor color to black"
"highlight iCursor guifg=black guibg=black 
""cursor color"
highlight Cursor guibg=gray
""remove the line across for cursor"
set nocursorline
nmap ; : 
":set gfn=* to see list of all available fonts and chagne it there
":set gfn to see what it changed to to set it here
set gfn=Monaco:h12

syntax on

" vundle
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'The-NERD-tree'
Bundle 'tpope/vim-rails.git'
Bundle 'fugitive.vim'
"Bundle 'Command-T'
"Bundle 'SuperTab'
Bundle 'endwise.vim'
Bundle 'Tabular'
Bundle 'matchit.zip'
Bundle 'ack.vim'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'ctrlp.vim'
"call pathogen#infect()
Bundle "scrooloose/nerdcommenter"

filetype plugin indent on

