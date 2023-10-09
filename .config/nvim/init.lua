local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "folke/tokyonight.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", 
			"MunifTanjim/nui.nvim"
		}
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	}
})

require("lualine").setup()
require("nvim-autopairs").setup()
require("lspconfig").clangd.setup({})
require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true }
})

vim.o.number = true
vim.o.cursorline = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 5
vim.o.completeopt = "menu"

vim.g.mapleader = " "

vim.cmd([[
colorscheme tokyonight

nnoremap <leader>n :Neotree<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
]])
