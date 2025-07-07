local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>f", fzf.files, { desc = "Fzf files" })
