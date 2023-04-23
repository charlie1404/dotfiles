xcode-select --install

touch ~/dotfiles/.zshrc.work
touch ~/dotfiles/.gitconfig.work
touch ~/dotfiles/.gitignore.work

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zshrc.work ~/.zshrc.work
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitconfig.work ~/.gitconfig.work
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.gitignore.work ~/.gitignore.work
