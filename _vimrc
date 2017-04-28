set nocompatible "use vim mode instead of pure vi

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'

" color schemes
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" interface
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'jeetsukumaran/vim-buffergator' " better buffer navigation

" editing
Plugin 'tpope/vim-surround' " edit surrounding characters such as [] or <t></t>
Plugin 'jiangmiao/auto-pairs' " automatically match quotes, brackets, etc.
Plugin 'ervandew/supertab' " autocomplete with tab key
Plugin 'unblevable/quick-scope' " highlight letters to make f navigation easier

" language support
Plugin 'rust-lang/rust.vim' " syntax highlighting for the rust language

" automation
Plugin 'garbas/vim-snipmate' " code snippets and supporting plugins
Plugin 'MarcWeber/vim-addon-mw-utils' 
Plugin 'tomtom/tlib_vim'

" other
Plugin 'kkoenig/wimproved.vim' " windows visual improvements

call vundle#end()

" plugin specific settings
autocmd GUIEnter * silent! WToggleClean " fix Windows rendering issues

" edit settings 
set backspace=indent,eol,start " backspace over everything in insert mode
set expandtab " fill tabs with spaces
set shiftwidth=4 " set indentation depth to 4
set softtabstop=4 " backspace over 4 spaces like tabs
set tabstop=4 " set tab length to 4
set autoindent " automatically set indent level
set incsearch " incremental search (similar to emacs)

" filetype specific settings
filetype indent plugin on " filetype detection, load plugins for specific filetypes, auto indent code

" syntax highlighting
colorscheme gruvbox " set color scheme to gruvbox (must be installed)
set background=dark " dark background for console
syntax enable "enable syntax highlighting
set number " enable line numbering

"  gvim settings
set guioptions-=L " disable left scrollbar in gvim
set guioptions-=T " disable toolbar in gvim
set guioptions-=r " disable scrollbar in gvim
set guioptions-=e " disable tab bar in gvim
set guifont=Consolas:h11 " set gvim font to Consolas 11

" keymaps
let mapleader = "\\"
nnoremap ; :
nnoremap <Leader>nt :NERDTree<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
