vim.g.mapleader = " "
-- ***NORMAL MODE***

-- Open directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>s", vim.cmd.w)

-- Go back to previous file
vim.keymap.set("n", "<leader>b", "<c-^>")

-- Delete all buffers but this one
vim.keymap.set("n", "<leader>cb", ":%bd|e#<CR>")

-- Change current directory for Telescope to work properly
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

-- Restart lsp
vim.keymap.set("n", "<leader>r", "<cmd>LspRestart<CR>")

-- Jump within panes
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

-- Resize panes
vim.keymap.set("n", "<silent> <leader>+", ":resize +5<CR>")
vim.keymap.set("n", "<silent> <leader>-", ":resize -5<CR>")

-- Quick list management
vim.keymap.set("n", "<leader>qc", ":cclose<CR>")
vim.keymap.set("n", "<leader>qp", ":cprev<CR>")
vim.keymap.set("n", "<leader>qn", ":cnext<CR>")

-- Formatter with Neoformat
vim.keymap.set("n", "<leader>f", ":Neoformat<CR>")

-- Jump 10 lines
-- vim.keymap.set("n", "<C-k>", "10kzz")
-- vim.keymap.set("n", "<C-j>", "10j")

-- Keep cursos in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")
vim.keymap.set("n", "*", "*zz")

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>d", "\"_d")

-- Search and replace
vim.keymap.set("n", "<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ***INSERT MODE***
vim.keymap.set("i", "kj", "<Esc>")

-- Closing brackets
-- vim.keymap.set("i", '"', '""<left>')
-- vim.keymap.set("i", "''", "''<left>")
-- vim.keymap.set("i", '(', '()<left>')
-- vim.keymap.set("i", '[', '[]<left>')
vim.keymap.set("i", '{', '{}<left>')
vim.keymap.set("i", '{<CR>', '{<CR>}<ESC>O')
vim.keymap.set("i", '{;<CR>', '{<CR>};<ESC>O')

-- ***VISUAL MODE***

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy to systems's clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Search and replace highlighted text
vim.keymap.set("v", "<leader>R", [["hy:%s/<C-r>h//gc<left><left><left>]])

-- **X MODE***
-- Paste several times (can use P for normal behaviour)
vim.keymap.set("x", "p", "pgvy")







