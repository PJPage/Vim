set nocompatible " use vim mode instead of pure vi

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim' " let Vundle manage itself

" color schemes
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" interface
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'jeetsukumaran/vim-buffergator' " better buffer navigation

" editing
Plugin 'tpope/vim-surround' " edit surrounding characters such as [] or <t></t>
Plugin 'tpope/vim-commentary' " easier commenting
Plugin 'tpope/vim-unimpaired' " use brackets and parentheses for useful shortcuts
Plugin 'tpope/vim-repeat' " repeat plugin commands with .

" language support
Plugin 'rust-lang/rust.vim' " syntax highlighting for the rust language

" automation
Plugin 'dhruvasagar/vim-table-mode' " create simple tables
Plugin 'garbas/vim-snipmate' " code snippets and supporting plugins
Plugin 'MarcWeber/vim-addon-mw-utils' 
Plugin 'tomtom/tlib_vim'

" other
Plugin 'kkoenig/wimproved.vim' " windows visual improvements

call vundle#end()

set laststatus=2

" plugin specific settings
autocmd GUIEnter * silent! WToggleClean " fix Windows rendering issues
let g:buffergator_autoexpand_on_split=0 " don't resize window when buffergator is opened
let g:tex_flavor = 'latex' " unbreak filetype detection for .tex


" tab settings 
set expandtab " fill tabs with spaces
set shiftwidth=4 " set indentation depth to 4
set softtabstop=4 " backspace over 4 spaces like tabs
set tabstop=4 " set tab length to 4
set autoindent " automatically set indent level

" edit settings
set backspace=indent,eol,start " backspace over everything in insert mode
set incsearch " incremental search (similar to emacs)
set linebreak " break by word when wrapping lines

" Enable file type detection and do language-independent indenting

" features
filetype indent plugin on 
syntax enable " enable syntax highlighting
set relativenumber " enable relative line numbering
set number " put the absolute line number on the line you're on

" appearance
set background=dark " dark background for console
colorscheme gruvbox " set color scheme to gruvbox (must be installed)

" gvim settings
set guioptions-=T " disable toolbar
set guioptions-=r " disable scrollbar
set guioptions-=e " disable tab bar
set guifont=Consolas:h11 " set gvim font to Consolas 11

" keymaps
nmap <space> <leader>
nnoremap <Leader>f :NERDTree<CR>
nnoremap <Leader>l :ls<CR>:b<space>
nnoremap ; :
nnoremap - ;
"nnoremap j gj
"nnoremap k gk
inoremap kj <Esc>
inoremap jk <Esc>
