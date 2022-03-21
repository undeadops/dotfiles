set -e
# Checkout Repo into base home folder $HOME/dotfiles

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install nvim ripgrep stow

# Setup sym links
cd $HOME/dotfiles && \
	stow zsh && \
	stow nvim

