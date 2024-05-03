vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitright = false

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'ctrlpvim/ctrlp.vim'
vim.call('plug#end')

-- nvim-tree
require("nvim-tree").setup({
    filters = {
        dotfiles = true, 
    },
    view = {
        side = 'right',
    },
    update_focused_file = {
	enable = true,
    },
    git = {
        enable = true,
    },
    modified = {
        enable = true,
    },
})
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", { silent = true, noremap = true })

-- ctrlp
vim.api.nvim_set_keymap("n", "<C-p>", ":CtrlP", { silent = true, noremap = true })
