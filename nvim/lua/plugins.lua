local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd([[packadd packer.nvim]])

vim.cmd('autocmd BufWritePost plugins.lua PackerCompile') -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt=true}

  --[[ 
  -- vim-surround - provides mappings to easily delete, change and add such surroundings in pairs.
  -- https://github.com/tpope/vim-surround#surroundvim
  ]]--
  use 'tpope/vim-surround'

  --[[ 
  -- vim-repeat - remaps `.` in a way that plugins can tap into it.
  -- https://github.com/tpope/vim-repeat#repeatvim
  ]]--
  use 'tpope/vim-repeat'

  --[[
  -- vim-sleuth - automatically adjusts 'shiftwidth' and 'expandtab'
  -- heuristically based on the current file.
  -- https://github.com/tpope/vim-sleuth#notes
  ]]--
  use 'tpope/vim-sleuth'

  --[[
  -- vim-dispatch - run multiple terminal commands in parallel
  -- https://github.com/tpope/vim-dispatch#dispatchvim
  --]]
  use 'tpope/vim-dispatch'

  --[[ 
  -- vim-dispatch-neovim - adds support for neovim's terminal emulator to vim-dispatch
  -- https://github.com/radenling/vim-dispatch-neovim#dispatch-neovim
  --]]
  use 'radenling/vim-dispatch-neovim'
  
  --[[
  -- vim-signify - adds git highlighting to the line number
  -- https://github.com/mhinz/vim-signify
  --]]
  use 'mhinz/vim-signify'

  --[[
  -- vim-visual-multi - multiple cursors
  -- https://github.com/mg979/vim-visual-multi
  --]]
  use 'mg979/vim-visual-multi'

  -- https://github.com/jiangmiao/auto-pairs
  use 'jiangmiao/auto-pairs'

end)
