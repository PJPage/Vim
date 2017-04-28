cd ~
cp Vim/.vimrc ~
mkdir .vim
cp -r Vim/snippets .vim
cd .vim
mkdir bundle
cd bundle
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git
rm -rf ~/Vim
vim +PluginInstall +qall
