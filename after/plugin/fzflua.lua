local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>f", fzf.files, { desc = "Fzf files" })
vim.keymap.set("n", "<leader>b", fzf.buffers, { desc = "Fzf buffers" })
vim.keymap.set("n", "<leader>sp", fzf.grep, { desc = "Search pattern" })
vim.keymap.set("n", "<F8>", fzf.lsp_document_symbols, { desc = "Search LSP document symbols" })
