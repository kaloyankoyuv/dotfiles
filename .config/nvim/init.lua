local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/tokyonight.nvim"
})


vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 5

vim.g.mapleader = " "

vim.cmd([[colorscheme tokyonight]])
vim.cmd([[nnoremap <leader>f :e `find -type f \\| dmenu -l 16`<cr>]])
