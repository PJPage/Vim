cp .vimrc ~
cd ~
mkdir .vim
cd .vim
mkdir bundle
cd bundle
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git
rm -rf ~/Vim
