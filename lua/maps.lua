vim.g.mapleader = ' '

function map(mode, lhs, rhs, remap, silent)
  vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = remap, silent = silent})
end

-- basics
map("n", "<Leader>w", ":w<CR>", false, false)
map("n", "<Leader>q", ":q<CR>", false, false)
map("n", "<Leader>Q", ":q!<CR>", false, false)

-- tab navigation
map("n", "<Leader>k", ":tabn<CR>", false, false)
map("n", "<Leader>j", ":tabp<CR>", false, false)

-- panel navigation
map("n", "<C-h>", "<C-w>h", true, false)
map("n", "<C-j>", "<C-w>j", true, false)
map("n", "<C-k>", "<C-w>k", true, false)
map("n", "<C-l>", "<C-w>l", true, false)
map("n", "<C-w>", "<C-w>=", true, false)

-- escape
map("v", ";;", "<ESC>", true, false)
map("i", ";;", "<ESC>", true, false)
map("x", ";;", "<ESC>", true, false)

-- prettier
map("n", "<Leader>pr", ":Prettier<CR>", true, false)

-- Telescope Maps
map("n", "<Leader>p", ":GFiles<CR>", true, false)
map("n", "<Leader>f", ":Ag<CR>", true, false)
map("n", "<Leader>s", ":GFiles?<CR>", true, false)

