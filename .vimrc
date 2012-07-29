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
color desert
set fdm=syntax
set hlsearch
set cul 

nmap ; : 

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

filetype plugin indent on

