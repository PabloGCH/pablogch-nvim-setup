lua << END

require('lualine').setup {
	options = {
		theme = 'material-stealth',
		disabled_filetypes = {'NvimTree'}
	},
	extensions = {'nvim-tree'},
}
END
