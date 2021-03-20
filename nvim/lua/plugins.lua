local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd([[packadd packer.nvim]])

-- vim.cmd('autocmd BufWritePost lua/** PackerCompile') -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt=true}

  -- Section - General

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
  -- vim-commentary - easy commenting
  -- https://github.com/tpope/vim-commentary
  --]]
  use 'tpope/vim-commentary'
  require('vim-commentary')

  --[[ 
  -- vim-dispatch-neovim - adds support for neovim's terminal emulator to vim-dispatch
  -- https://github.com/radenling/vim-dispatch-neovim#dispatch-neovim
  --]]
  use 'radenling/vim-dispatch-neovim'

  --[[
  -- vim-visual-multi - multiple cursors
  -- https://github.com/mg979/vim-visual-multi
  --]]
  use 'mg979/vim-visual-multi'

  --[[
  -- vim-matchup - extends the `%` command
  -- https://github.com/andymass/vim-matchup
  --]]
  use 'andymass/vim-matchup'

  --[[
  -- fzf - vim fuzzy finder
  -- https://github.com/junegunn/fzf
  --]]
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  require('fzf')

  --[[
  -- TODO: galaxyline
  -- https://github.com/glepnir/galaxyline.nvim
  --]]
  --[[
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main'
  }
  --]]

  --[[
  -- lexima.vim - autocomplete brackets, quotes, etc.
  -- https://github.com/cohama/lexima.vim
  --]]
  use 'cohama/lexima.vim'
  require('lexima')

  --[[
  -- vim_current_word - highlight matches to the word under the cursor
  -- https://github.com/dominikduda/vim_current_word 
  --]]
  use 'dominikduda/vim_current_word'

  --[[
  -- nvim-compe - Auto completion plugin for nvim
  -- https://github.com/hrsh7th/nvim-compe
  --]]
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  require('nvim-compe')

  --[[
  -- vim-which-key - display available keybindings in a popup
  -- https://github.com/liuchengxu/vim-which-key
  --]]
  use 'liuchengxu/vim-which-key'
  require('vim-which-key')

  --[[
  -- vim-startify - a fancy start screen
  -- https://github.com/mhinz/vim-startify
  ]]
  use 'mhinz/vim-startify'

  --[[
  -- nvim-tree - file explorer tree
  -- https://github.com/kyazdani42/nvim-tree.lua
  --]]
  -- use 'kyazdani42/nvim-web-devicons' -- for file icons
  -- use 'kyazdani42/nvim-tree.lua'
  -- require('nvim-tree')
  --[[
  -- fern - file explorer tree
  -- https://github.com/lambdalisue/fern.vim
  --]]
  use 'lambdalisue/fern.vim'
  use 'antoinemadec/FixCursorHold.nvim' -- fix for neovim issues
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/fern-git-status.vim'
  require('fern')

  -- TODO: do I need ale with LSP?
  --[[
  -- ale - asynchronous lint engine
  -- https://github.com/dense-analysis/ale
  ]]
  -- use 'dense-analysis/ale'
  -- require('ale')
  
  --[[
  -- galaxyline - fancy status line
  -- https://github.com/glepnir/galaxyline.nvim
  --]]
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require('galaxyline-config') end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  --[[
  -- barbar - fancy tabline
  -- https://github.com/romgrk/barbar.nvim
  ]]
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- TODO: better keybindings
  --  - don't treat buffers like tabs (or something like that)

  use 'neovim/nvim-lspconfig'

  -- EndSection - General

  -- Section - Git
  
  --[[
  -- vim-signify - adds git highlighting to the line number
  -- https://github.com/mhinz/vim-signify
  --]]
  use 'mhinz/vim-signify'

  -- EndSection - Git

end)
