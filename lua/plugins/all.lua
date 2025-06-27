return {
	-- the pope
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat" },
	-- Fuzzy Finder (files, lsp, etc)
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
		-- Set lualine as statusline
		-- See `:help lualine.txt`
		'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
			},
		},
	},
}
