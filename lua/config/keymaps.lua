local set = vim.keymap.set

set("n", "<Tab>", "<cmd>bn<CR>", { silent = true, noremap = true })
set("n", "<S-Tab>", "<cmd>bp<CR>", { silent = true, noremap = true })
set("n", "<Leader>X", "<cmd>bufdo bd<CR>", { silent = true, noremap = true })

set("t", "<C-x>", "<C-\\><C-n>", { silent = true, noremap = true })
