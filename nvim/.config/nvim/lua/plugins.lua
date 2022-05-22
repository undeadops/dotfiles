vim.cmd('packadd packer.nvim')

return require('packer').startup(
	function()
		use 'wbthomason/packer.nvim'
    -- Themes
    use 'tanvirtin/monokai.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'

    -- Terminal
		use {
      's1n7ax/nvim-terminal',
      config = function()
      vim.o.hidden = true
      require('nvim-terminal').setup()
      end,
    }
    -- Language Things
		use 'fatih/vim-go'
		use 'tpope/vim-rails'
		use 'vim-ruby/vim-ruby'
		use 'thoughtbot/vim-rspec'
		use 'robbles/logstash'
		use 'pangloss/vim-javascript'
		use 'isRuslan/vim-es6'
		use 'stephpy/vim-yaml'
		use 'uarun/vim-protobuf'

		-- Typescript things
		use "jose-elias-alvarez/null-ls.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"

		-- Terraform things
		use "hashivim/vim-terraform"

    -- Utilities
		use 'flazz/vim-colorschemes'
		use 'christoomey/vim-tmux-navigator'
		use 'honza/vim-snippets'
		use 'slim-template/vim-slim'
		use 'bronson/vim-trailing-whitespace'
		use 'Raimondi/delimitMate'
		use 'ddollar/nerdcommenter'
		use 'vim-syntastic/syntastic'
		use 'preservim/nerdtree'
		use 'airblade/vim-gitgutter'
		use 'tpope/vim-fugitive'
		use 'vim-airline/vim-airline'
		use 'diepm/vim-rest-console'
		use 'easymotion/vim-easymotion'
		use 'ervandew/supertab'
		use 'christoomey/vim-tmux-runner'
		use 'prabirshrestha/async.vim'

		-- NVIM Specifics
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-treesitter/nvim-treesitter'
		use 'nvim-telescope/telescope.nvim'
		use 'ThePrimeagen/harpoon'

	end
)
