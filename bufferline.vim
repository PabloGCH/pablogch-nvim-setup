" Move to previous/next
nnoremap <silent>    <A-l> :BufferLineCycleNext<CR>
nnoremap <silent>    <A-h> :BufferLineCyclePrev<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferLineMovePrev<CR>
nnoremap <silent>    <A->> :BufferLineMoveNext<CR>
" Close buffer
nnoremap <silent>    <A-c> :Bdelete!<CR>


nnoremap <silent>    <A-1> :lua require("bufferline").go_to_buffer(1, true)<CR>
nnoremap <silent>    <A-2> :lua require("bufferline").go_to_buffer(2, true)<CR>
nnoremap <silent>    <A-3> :lua require("bufferline").go_to_buffer(3, true)<CR>
nnoremap <silent>    <A-4> :lua require("bufferline").go_to_buffer(4, true)<CR>
nnoremap <silent>    <A-5> :lua require("bufferline").go_to_buffer(5, true)<CR>
nnoremap <silent>    <A-6> :lua require("bufferline").go_to_buffer(6, true)<CR>
nnoremap <silent>    <A-7> :lua require("bufferline").go_to_buffer(7, true)<CR>
nnoremap <silent>    <A-8> :lua require("bufferline").go_to_buffer(8, true)<CR>
nnoremap <silent>    <A-9> :lua require("bufferline").go_to_buffer(9, true)<CR>


lua << EOF
require("bufferline").setup{
	options = {
		show_buffer_close_icons = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				text_align = "center",
				separator = false,
			}   
		},
		separator_style = {"",""}
	},
	highlights = {
		offset_separator = {
		    fg = "#232637",
		},
	}

}

EOF

