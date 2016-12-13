set nocompatible "use vim mode instead of pure vi

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'  " plugin manager
Plugin 'morhetz/gruvbox' " color scheme
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'tpope/vim-surround' " edit surrounding characters such as [] or <t></t>
Plugin 'jiangmiao/auto-pairs' " automatically add matchins brackets, parens, etc.
Plugin 'ervandew/supertab' " autocomplete with tab key
Plugin 'vimwiki/vimwiki' " wiki editor

call vundle#end()

" edit settings 
set backspace=indent,eol,start " backspace over everything in insert mode
set expandtab " fill tabs with spaces
set shiftwidth=4 " set indentation depth to 4
set softtabstop=4 " backspace over 4 spaces like tabs
set tabstop=4 " set tabulator length to 4

" filetype specific settings
filetype indent plugin on " filetype detection, load plugins for specific filetypes, auto indent code

" syntax highlighting
colorscheme gruvbox " set color scheme to solarized (must be installed)
set background=dark " dark background for console
syntax enable "enable syntax highlighting
set number " enable line numbering

"  gvim settings
set guioptions-=T  " disable toolbar in gvim
set guioptions-=r  " disable scrollbar in gvim
set guifont=Consolas:h11 " set gvim font to Consolas 11

" keymaps
nnoremap ; :
