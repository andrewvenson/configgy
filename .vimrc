set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'yuezk/vim-js'
Plugin 'zivyangll/git-blame.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vimwiki/vimwiki'

call vundle#end()            " required
filetype plugin indent on    " required

" For everything else, use a tab width of 4 space chars.
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set number
set nowrap
set visualbell
set t_vb=
set statusline+=%{FugitiveStatusline()}
syntax on
colorscheme delek

set encoding=UTF-8

let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p

nnoremap <C-p> :Files<Cr>
nnoremap <C-n> :NERDTreeFind<Cr>
nnoremap <C-b> :NERDTreeToggle<Cr>
nnoremap <C-m> :Rg<Cr>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
