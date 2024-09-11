-- setup colorschemes
require("rose-pine").setup({
	variant = "auto",
	dark_variant = "main",
	dim_inactive_windows = true,
	styles = {
		transparency = true,
	},
})

vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
