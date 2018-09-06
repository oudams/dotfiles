rm -f ~/.vimrc
ln -s ~/.dotfiles/vimrc ~/.vimrc

rm -rf ~/.config/nvim/
mkdir ~/.vim
ln -s ~/.vim ~/.config/nvim

rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

rm -f ~/.aliases
ln -s ~/.dotfiles/aliases ~/.aliases

rm -f ~/.zshrc
ln -f -s ~/.dotfiles/zshrc ~/.zshrc

rm -f ~/.tmux.conf
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

rm -f ~/.agignore
ln -s ~/.dotfiles/agignore ~/.agignore

rm -f ~/.gitconfig
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

rm -f ~/.gitignore_global
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global

rm -f ~/.pryrc
ln -s ~/.dotfiles/pryrc ~/.pryrc

rm -f ~/.irbrc
ln -s ~/.dotfiles/irbrc ~/.irbrc

rm -f ~/.vimrc.local
ln -s ~/.dotfiles/vimrc.local ~/.vimrc.local

rm -f ~/.vim/custom/plugin_customizations.vim
mkdir ~/.vim/custom
ln -s ~/.dotfiles/plugin_customizations.vim ~/.vim/custom/plugin_customizations.vim

rm -f ~/.vim/syntax/ruby.vim
mkdir ~/.vim/syntax
ln -s ~/.dotfiles/ruby.vim ~/.vim/syntax/ruby.vim

# Atom
rm -f ~/.atom/keymap.cson
ln -s ~/.dotfiles/atom/keymap.cson ~/.atom/keymap.cson

rm -f ~/.atom/styles.less
ln -s ~/.dotfiles/atom/styles.less ~/.atom/styles.less
