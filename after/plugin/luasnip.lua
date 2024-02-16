-- see https://github.com/L3MON4D3/LuaSnip#keymaps
-- use <Tab> (or <S-Tab>) to expand and jump (backwards) through snippets
vim.cmd([[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])

-- load snippets
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnippets/"})
require("luasnip.loaders.from_vscode").lazy_load()
