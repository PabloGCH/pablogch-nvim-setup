" Nvim-tree lua conf
lua << EOF
require'nvim-tree'.setup{
}
require'nvim-web-devicons'.setup{
	-- your personnal icons can go here (to override)
	-- you can specify color or cterm_color instead of specifying both of them
	-- DevIcon will be appended to `name`
	override = {
		zsh = {
			icon = "",
		}
		};
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true;
}
EOF
" Nvim-tree mappings
nnoremap <C-n> :NvimTreeToggle<CR>
