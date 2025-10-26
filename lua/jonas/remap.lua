vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set({"n", "i", "v"}, "<C-s>", function()
    vim.cmd("w")
end, { desc = "Save file" })

-- Error window hotkeys
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float,{ desc = "Open diagnostic window"})
vim.keymap.set("n", "<leader>p", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, { desc = "Goto next error"})
vim.keymap.set("n", "<leader>el", vim.diagnostic.setloclist, { desc = "List all errors"})
vim.keymap.set("n", "<leader>cl", function()
    vim.cmd("lclose")
end)

-- Fix indending 
vim.keymap.set("n", "<leader>in", "gg=G", { desc = "Fix indenting"})

