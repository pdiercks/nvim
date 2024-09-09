vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open up netrw
vim.keymap.set("n", "<leader>rw", vim.cmd.Ex)

-- exit terminal mode with <Esc>
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- nohl with <Esc> in normal mode
vim.keymap.set("n", "<Esc>", vim.cmd.nohl)
