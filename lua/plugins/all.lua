return {
	-- the pope
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat" },

	-- Fuzzy Finder (files, lsp, etc)
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				-- NOTE: If you are having trouble with this installation,
				--       refer to the README for telescope-fzf-native for more instructions.
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
	},
	{
		-- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
	},
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
		opts = {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
			},
		},
	},
	-- LSP Support
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	-- Manage LSP servers and more
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	-- Completion engine
	{ "hrsh7th/nvim-cmp" },
	-- Snippet engine
	-- {
	-- 	"L3MON4D3/LuaSnip",
	-- 	dependencies = {
	-- 		{ "rafamadriz/friendly-snippets" },
	-- 	},
	-- },
	-- Source for nvim-cmp
	-- { "saadparwaiz1/cmp_luasnip" },
	-- Formatter
	{ "stevearc/conform.nvim", opts = {} },
	-- Vimtex
	{ "lervag/vimtex" },
}
