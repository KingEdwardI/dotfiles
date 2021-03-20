vim.g.cursorhold_updatetime = 100 -- neovim fix

-- TODO: open to cwd instead of current file
vim.api.nvim_set_keymap('n', '<C-t><C-t>', ':Fern . -drawer -reveal=%<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-t><C-o>', ':Fern . -drawer -reveal=%<CR> -stay', { noremap = true })
vim.g['fern#default_hidden'] = 1
vim.g['fern#renderer'] = 'nerdfont'
vim.wo.number = false
vim.wo.signcolumn = 'no'
vim.wo.relativenumber = false

vim.api.nvim_command([[
function! InitFern() abort
  nmap <buffer> <Plug>(fern-action-open-or-enter) <Plug>(fern-action-open-or-expand)
  nmap <buffer> md <Plug>(fern-action-remove)
  nmap <buffer> mm <Plug>(fern-action-rename)
  nmap <buffer> mad <Plug>(fern-action-new-dir)
  nmap <buffer> maf <Plug>(fern-action-new-file)
  nmap <buffer> map <Plug>(fern-action-new-path)
  nmap <buffer> T <Plug>(fern-action-open:tabedit)
  nmap <buffer> t <Up>
  nmap <buffer> <C-t><C-c> :q<CR>
  nmap <buffer> <C-t><C-t> <C-w>w
endfunction

augroup fern-custom
  autocmd FileType fern call InitFern()
augroup END
]])


-- TODO: use something more like this once there is support
-- function FernSettings()
--   vim.api.nvim_buf_set_keymap(0, '<Plug>(fern-action-open-or-enter)', '<Plug>(fern-action-open-or-expand)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'md', '<Plug>(fern-action-remove)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'mm', '<Plug>(fern-action-rename)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'mad', '<Plug>(fern-action-new-dir)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'maf', '<Plug>(fern-action-new-file)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'map', '<Plug>(fern-action-new-path)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 'T', '<Plug>(fern-action-open:tabedit)', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, 't', '<Up>', { silent = true, noawait = true })
--   vim.api.nvim_buf_set_keymap(0, '<C-t><C-t>', '<C-w>w', { silent = true, noawait = true })
-- end

-- vim.cmd('autocmd FileType fern lua FernSettings()')
