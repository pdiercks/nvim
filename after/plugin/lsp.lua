local lsp_zero = require("lsp-zero")

local lsp_attach = function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	vim.keymap.set("n", "gl", function()
		vim.diagnostic.open_float()
	end, { buffer = bufnr })
	-- use conform plugin to handle formatting
	vim.keymap.set(
		"n",
		"<F3>",
		"<cmd>lua require('conform').format()<cr>",
		{ buffer = bufnr, desc = "Format file", nowait = true }
	)
	lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = true })
end

lsp_zero.extend_lspconfig({
	sign_text = true,
	lsp_attach = lsp_attach,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	float_boarder = "rounded",
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "rust_analyzer" },
})

require("lspconfig").rust_analyzer.setup({})
require("lspconfig").lua_ls.setup({
	on_init = function(client)
		lsp_zero.nvim_lua_settings(client, {})
	end,
})

require("lspconfig").pyright.setup({
	settings = {
		pyright = {
			-- Using Ruff's import organizer
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				ignore = { "*" },
				-- see "Type Check Rule Overrides" for more control over diagnostics
				-- https://microsoft.github.io/pyright/#/configuration?id=type-check-rule-overrides
				-- typeCheckingMode = { 'off' },
			},
		},
	},
})

require("lspconfig").ruff.setup({
	trace = "messages",
	init_options = {
		settings = {
			configurationPreference = "filesystemFirst",
			logLevel = "debug",
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client == nil then
			return
		end
		if client.name == "ruff" then
			-- Disable hover in favor of Pyright
			client.server_capabilities.hoverProvider = false
		end
	end,
	desc = "LSP: Disable hover capability from Ruff",
})
