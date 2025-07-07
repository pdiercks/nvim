return {
    { "tpope/vim-fugitive" },
	{
		-- Comment using gcc, gbc etc.
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		-- Set lualine as statusline
		-- See `:help lualine.txt`
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
			},
		},
	},
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
}
