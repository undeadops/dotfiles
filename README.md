# dotfiles

My Working dotfiles directory. 

Containing configs for neovim, etc..

### Installation

Install stow
```bash
brew install stow
```

Install Packer for nvim
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install Oh-My-ZSH
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install npm and Typescript things because I do that now apparently...
```bash
brew install npm
npm install -g typescript typescript-language-server eslint prettier
```

### Running

```bash
cd dotfiles && stow zsh && stow zsh
```

```bash
nvim (Ignore Errors)

:PackerUpdate
```
