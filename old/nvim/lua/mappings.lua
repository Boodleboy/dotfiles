local map = vim.api.nvim_set_keymap

function SFiles() -- smart Files. uses git if in git repo
	vim.cmd([[
		let out = system('git rev-parse --is-inside-work-tree')
		if stridx(out, 'true') >= 0
			:GFiles
		else
			:Files
		endif
	]])
end

map('n', '<leader>b', '<cmd>Buffers<cr>', {})

map('n', '<leader>o', '<cmd>lua SFiles()<cr>', {})
