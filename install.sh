set -e

# Change shell to zsh
chsh -s $(which zsh)

echo -n "Symlinking dotfiles..."
#Symlink .zshrc and .vimrc
mkdir -p $HOME/.config/nvim/autoload
ln -f -s $HOME/.dotfiles/vim/vimrc $HOME/.config/nvim/init.vim
ln -f -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
ln -f -s $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv
ln -f -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +q


# ZSH Suggestions

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.dotfiles/zsh-autosuggestions
