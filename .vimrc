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
Bundle "scrooloose/nerdcommenter"

filetype plugin indent on

