vim.cmd [[ packadd packer.nvim ]]

return require("packer").startup(function()
    use "wbthomason/packer.nvim"    -- plugin manager (can manage itself)
    use "tpope/vim-eunuch"          -- basic commands on current file (Rename/Remove)
	-- best used as shortcuts. TODO: make those shortcuts
	
	use 'tpope/vim-surround' -- change surroundings easily
	-- cs<old><new> for basic replace
	-- ds<surround> to remove
	-- ys<movement><surround> to add surrounds
	-- S<surround> in visual mode

	use 'tpope/vim-commentary' -- comment shortcuts
	-- gcc to toggle comment

	use 'tpope/vim-speeddating' -- date increment/decrement
	-- <C-a> and <C-x> now work better with dates

	use 'tpope/vim-endwise' -- auto-add 'fi' after 'if', and similar
end)

