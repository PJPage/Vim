set nocompatible "use vim mode instead of pure vi

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'  " plugin manager
Plugin 'morhetz/gruvbox' " color scheme
Plugin 'tomasr/molokai' " alternate color scheme
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'tpope/vim-surround' " edit surrounding characters such as [] or <t></t>
Plugin 'jiangmiao/auto-pairs' " automatically match quotes, brackets, etc.
Plugin 'ervandew/supertab' " autocomplete with tab key
Plugin 'kkoenig/wimproved.vim' " windows visual improvements
Plugin 'godlygeek/tabular' " automatically align code
Plugin 'unblevable/quick-scope' " highlight letters to make f navigation easier
Plugin 'sirver/ultisnips' " inert snippets of code
Plugin 'honza/vim-snippets' " default snippets for ultisnips
Plugin 'yuttie/comfortable-motion.vim' " inertial scrolling
Plugin 'rust-lang/rust.vim' " syntax highlighting for the rust language
call vundle#end()

" plugin specific settings

" edit settings 
set backspace=indent,eol,start " backspace over everything in insert mode
set expandtab " fill tabs with spaces
set shiftwidth=4 " set indentation depth to 4
set softtabstop=4 " backspace over 4 spaces like tabs
set tabstop=4 " set tab length to 4
set autoindent " automatically set indent level

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
set guifont="Droid Mono:h11" " set gvim font

" keymaps
let mapleader = "\\"
nnoremap ; :
nnoremap <Leader>nt :NERDTree<CR>
