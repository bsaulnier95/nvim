vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>noh", vim.cmd.noh)
vim.keymap.set("n", "<leader>n", vim.cmd.bnext)
vim.keymap.set("n", "<leader>b", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete)

-- Move highlighted section
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy Relative Path
vim.keymap.set("n", "<leader>rp", function() vim.fn.setreg('+', vim.fn.expand("%")) end, { silent = true })
