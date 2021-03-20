-- these are fixes for nvim-compe
-- NOTE: Order is important. You can't lazy loading lexima.vim.
vim.g.lexima_no_default_rules = true
vim.cmd('call lexima#set_default_rules()')
vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<CR>', "compe#confirm(lixima#expand('<LT>CR>'))", { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-e>', "compe#close('<C-e>')", { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { silent = true, expr = true })