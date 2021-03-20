" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/edward.vetterdrake/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/edward.vetterdrake/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/edward.vetterdrake/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/edward.vetterdrake/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/edward.vetterdrake/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  ["fern-git-status.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/fern-git-status.vim"
  },
  ["fern-renderer-nerdfont.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/fern-renderer-nerdfont.vim"
  },
  ["fern.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/fern.vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22galaxyline-config\frequire\0" },
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/nerdfont.vim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-dispatch-neovim"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-dispatch-neovim"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  vim_current_word = {
    loaded = true,
    path = "/Users/edward.vetterdrake/.local/share/nvim/site/pack/packer/start/vim_current_word"
  }
}

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22galaxyline-config\frequire\0", "config", "galaxyline.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
