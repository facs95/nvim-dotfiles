local builtin = require('telescope.builtin')
local telescope = require('telescope')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})

-- Two function that I want to start trying
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--[[ vim.keymap.set('n', '<leader>gg', function()
  builtin.grep_string({ search = vim.fn.input('Grep For > ') })
end, {}) ]]
vim.keymap.set("n", "<leader>gg", telescope.extensions.live_grep_args.live_grep_args, {})
