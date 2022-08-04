lua << EOF
	require('ayu').setup({
		mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
		overrides = {},
	})
	require('onedark').setup {
	}
EOF
