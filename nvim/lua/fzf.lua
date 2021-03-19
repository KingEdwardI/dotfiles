vim.api.nvim_set_keymap('n', '<Leader>ff', ':GFiles<CR>', { noremap = true }) -- find files based on .gitignore
vim.api.nvim_set_keymap('n', '<Leader>fF', ':FZF<CR>', { noremap = true })    -- find files anywhere below the cwd
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Ag<CR>', { noremap = true })     -- find text 
