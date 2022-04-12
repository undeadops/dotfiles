vim.g.mapleader = ','

vim.cmd('language en_US.utf-8')
vim.cmd('filetype off')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('set noswapfile')
vim.cmd('set nocompatible')

vim.o.ruler = true
vim.o.relativenumber = true

vim.wo.number = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = false

vim.cmd('set mouse=a')
vim.cmd('set t_Co=256')
vim.cmd('set clipboard=unnamed')
vim.cmd('set background=dark')
vim.cmd('syntax on')

-- colorscheme
require('monokai').setup {}
-- require('monokai').setup { palette = require('monokai').pro }
require('monokai').setup { palette = require('monokai').soda }

vim.cmd('highlight Normal ctermbg=None')

local opts = {
	noremap = true,
	silent = true
}

-- Terminal things
-- following option will hide the buffer when it is closed instead of deleting
-- the buffer. This is important to reuse the last terminal buffer
-- IF the option is not set, plugin will open a new terminal every single time
vim.o.hidden = true

require('nvim-terminal').setup({
    window = {
        -- Do `:h :botright` for more information
        -- NOTE: width or height may not be applied in some "pos"
        position = 'botright',

        -- Do `:h split` for more information
        split = 'sp',

        -- Width of the terminal
        width = 50,

        -- Height of the terminal
        height = 15,
    },

    -- keymap to disable all the default keymaps
    disable_default_keymaps = false,

    -- keymap to toggle open and close terminal window
    toggle_keymap = '<leader>;',

    -- increase the window height by when you hit the keymap
    window_height_change_amount = 2,

    -- increase the window width by when you hit the keymap
    window_width_change_amount = 2,

    -- keymap to increase the window width
    increase_width_keymap = '<leader><leader>+',

    -- keymap to decrease the window width
    decrease_width_keymap = '<leader><leader>-',

    -- keymap to increase the window height
    increase_height_keymap = '<leader>+',

    -- keymap to decrease the window height
    decrease_height_keymap = '<leader>-',

    terminals = {
        -- keymaps to open nth terminal
        {keymap = '<leader>1'},
        {keymap = '<leader>2'},
        {keymap = '<leader>3'},
        {keymap = '<leader>4'},
        {keymap = '<leader>5'},
    },
})

-- Airline things
vim.cmd('set encoding=utf8')
vim.cmd('let g:airline_powerline_fonts = 1')
vim.cmd('let g:airline#extensions#tabline#enabled = 1')
vim.cmd('let g:airline#extensions#tabline#show_tab_nr = 1')
vim.cmd('let g:airline#extensions#tabline#show_splits = 0')
vim.cmd('let g:airline#extensions#tabline#buffer_idx_mode = 1')

-- Filetypes
vim.cmd('autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2')
vim.cmd('autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2')
vim.cmd('autocmd Filetype eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2')
vim.cmd('autocmd Filetype slim setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2')
vim.cmd('autocmd Filetype coffee setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2')
vim.cmd('autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 autoindent')
vim.cmd('autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 expandtab smarttab shiftwidth=2')
vim.cmd('autocmd Filetype rest setlocal tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype conf setlocal tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype vimwiki setlocal tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd Filetype lua setlocal tabstop=2 shiftwidth=2 softtabstop=2')

-- JSON Formatter with Python Support
vim.cmd('let g:python_host_prog = "/usr/bin/python2.7"')
vim.cmd('com! FormatJSON %!python -m json.tool')

-- vim.cmd('let g:slime_target = "tmux"')
-- vim.cmd('let g:slime_paste_file = "$HOME/.slime_paste"')
