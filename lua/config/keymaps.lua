local set = vim.keymap.set

-- buffer
set("n", "<leader>b", "<cmd> ene <cr>", { silent = true, noremap = true })
set("n", "<Tab>", "<cmd>bn<CR>", { silent = true, noremap = true })
set("n", "<S-Tab>", "<cmd>bp<CR>", { silent = true, noremap = true })
set("n", "<Leader>X", "<cmd>bufdo bd<CR>", { silent = true, noremap = true })

set("n", "Y", "y$", { silent = true, noremap = true })

set("t", "<C-x>", "<C-\\><C-n>", { silent = true, noremap = true })
