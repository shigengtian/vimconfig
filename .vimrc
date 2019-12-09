set number
set nocompatible              " be iMproved, required
set tabstop=4
set shiftwidth=4
filetype off                  " required
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'scrooloose/nerdtree'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

"window left open is a NERDTree
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
