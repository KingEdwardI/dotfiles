vim.g.mapleader = ','
-- Remap hjkl movement keys for Dvorak & personal preference
vim.api.nvim_set_keymap('', 'h', '<Left>', {})
vim.api.nvim_set_keymap('', 't', '<Up>', {})
vim.api.nvim_set_keymap('', 'T', '8<Up>', {})
vim.api.nvim_set_keymap('', 'n', '<Down>', {})
vim.api.nvim_set_keymap('', 'N', '8<Down>', {})
vim.api.nvim_set_keymap('', 's', '<Right>', {})

vim.api.nvim_set_keymap('i', 'hh', '<Esc>', { noremap = true })

-- jump instead of next
vim.api.nvim_set_keymap('n', 'j', 'n', { noremap = true })
vim.api.nvim_set_keymap('n', 'J', 'N', { noremap = true })

-- beginning / end of line
vim.api.nvim_set_keymap('n', '-', '$', { noremap = true })
vim.api.nvim_set_keymap('n', '_', '^', { noremap = true })

-- kill line (wrap up)
vim.api.nvim_set_keymap('n', 'k', 'J', { noremap = true })

-- window navigation
vim.api.nvim_set_keymap('n', 'gb', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', 'gB', ':bprevious<CR>', {})
vim.api.nvim_set_keymap('n', 'gt', ':tabnext<CR>', {})
vim.api.nvim_set_keymap('n', 'gT', ':tabprevious<CR>', {})
