local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{'tpope/vim-eunuch'}, -- basic commands on current file (Rename/Remove)
 	-- best used as shortcuts. TODO: make those shortcuts
	
	{'tpope/vim-surround' }, -- change surroundings easily
	-- cs<old><new> for basic replace
	-- ds<surround> to remove
	-- ys<movement><surround> to add surrounds
	-- S<surround> in visual mode
	
	{'tpope/vim-commentary' }, -- comment shortcuts
	-- gc<movement> to toggle comment

	{'tpope/vim-speeddating' }, -- date increment/decrement
	-- <C-a> and <C-x> now work better with dates

	{'tpope/vim-endwise' } -- auto-add 'fi' after 'if', and similar
}

require("lazy").setup(plugins)

