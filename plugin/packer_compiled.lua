-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\14219\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\14219\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\14219\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\14219\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\14219\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ale",
    url = "git@github.com:dense-analysis/ale"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "git@github.com:jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "git@github.com:neoclide/coc.nvim"
  },
  everforest = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\everforest",
    url = "git@github.com:sainnhe/everforest"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "git@github.com:nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "git@github.com:nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow",
    url = "git@github.com:luochen1990/rainbow"
  },
  ripgrep = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ripgrep",
    url = "git@github.com:BurntSushi/ripgrep"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "git@github.com:vim-airline/vim-airline"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "git@github.com:tpope/vim-commentary"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-easymotion",
    url = "git@github.com:easymotion/vim-easymotion"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "git@github.com:tpope/vim-surround"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "C:\\Users\\14219\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-visual-multi",
    url = "git@github.com:mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
