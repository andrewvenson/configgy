set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'yuezk/vim-js'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required
filetype plugin indent on    " required

" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set number
set nowrap
autocmd VimEnter * NERDTree | wincmd p
syntax on
colorscheme delek
set encoding=UTF-8
let NERDTreeShowHidden=1

nnoremap <C-p> :Files<Cr>
