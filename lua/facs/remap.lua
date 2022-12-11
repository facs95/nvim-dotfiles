local M = require("facs.keymap")

-- This is for going back to the directory
M.nnoremap("<leader>pv", "<cmd>Ex<CR>")
-- Move lines
M.vnoremap("J", ":m '>+1<CR>gv=gv")
M.vnoremap("K", ":m '<-2<CR>gv=gv")

M.nnoremap("<leader>s", "<cmd>w<CR>")
M.inoremap("kj", "<Esc>")

-- Go back to previous file
M.nnoremap("<leader>b", "<c-^>")

-- Change current directory for Telescope to work properly
M.nnoremap("<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

-- Restart lsp
M.nnoremap("<leader>r", "<cmd>LspRestart<CR>")

-- Copy to systems's clipboard
M.vnoremap("<leader>y", '"+y')

-- Paste several times (can use P for normal behaviour)
M.xnoremap("p", "pgvy")

-- Autocomplete on tab
M.inoremap("<Tab>", "<c-x><c-o>")

-- Jump within panes
M.nnoremap("<leader>h", ":wincmd h<CR>")
M.nnoremap("<leader>j", ":wincmd j<CR>")
M.nnoremap("<leader>k", ":wincmd k<CR>")
M.nnoremap("<leader>l", ":wincmd l<CR>")

-- Resize panes
M.nnoremap("<silent> <leader>+", ":resize +5<CR>")
M.nnoremap("<silent> <leader>-", ":resize -5<CR>")

-- Harpoon
M.nnoremap("<leader>aa", ':lua require("harpoon.mark").add_file()<CR>')
M.nnoremap("<leader>ap", ':lua require("harpoon.ui").nav_prev()<CR>')
M.nnoremap("<leader>an", ':lua require("harpoon.ui").nav_next()<CR>')
M.nnoremap("<leader>a1", ':lua require("harpoon.ui").nav_file(1)<CR>')
M.nnoremap("<leader>a2", ':lua require("harpoon.ui").nav_file(2)<CR>')
M.nnoremap("<leader>a3", ':lua require("harpoon.ui").nav_file(3)<CR>')
M.nnoremap("<leader>a4", ':lua require("harpoon.ui").nav_file(4)<CR>')
M.nnoremap("<leader>a5", ':lua require("harpoon.ui").nav_file(5)<CR>')

-- Quick list management
M.nnoremap("<leader>qc", ":cclose<CR>")
M.nnoremap("<leader>qp", ":cprev<CR>")
M.nnoremap("<leader>qn", ":cnext<CR>")

-- Closing brackets
M.inoremap('"', '""<left>')
M.inoremap("''", "''<left>")
M.inoremap('(', '()<left>')
M.inoremap('[', '[]<left>')
M.inoremap('{', '{}<left>')
M.inoremap('{<CR>', '{<CR>}<ESC>O')
M.inoremap('{;<CR>', '{<CR>};<ESC>O')

-- Formatter with Neoformat
M.nnoremap("<leader>f", ":Neoformat<CR>")

-- Search and replace tips
-- Search for text using / or for a word using *.
-- In normal mode, type cgn (change the next search hit) then immediately type the replacement. Press Esc to finish.
-- From normal mode, search for the next occurrence that you want to replace (n) and press . to repeat the last change.


