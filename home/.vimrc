colorscheme jellybeans " color scheme

syntax enable " Enable syntax processing

set tabstop=4 " Tab width
set softtabstop=4 " Number of spaces in tab
set expandtab " Tab is spaces for stability
set shiftwidth=4

set number " Show line number

set showcmd " Show last command in botom right

set cursorline " Highlight current line

filetype indent on " Load filetype-specific indent files
filetype plugin on

set showmatch " Match [{()}]

set laststatus=2                                                                                                                                                              
set noshowmode

" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of pligins
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'

" List ends here. Plugins become visible to Vim after this call
call plug#end()
