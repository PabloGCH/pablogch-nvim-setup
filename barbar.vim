"Mapping
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferGoto 9<CR>
nnoremap <silent>    <A-0> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
"nnoremap <silent>    <A-c> :bdelete! \| BufferGoto 1<CR>
nnoremap <silent>    <A-c> :BufferClose!<CR>

"Options
let bufferline = get(g:, 'bufferline', {})
let bufferline.closable = v:false

lua << EOF
	local nvim_tree_events = require('nvim-tree.events')
	local bufferline_state = require('bufferline.state')

	nvim_tree_events.on_tree_open(function ()
	  bufferline_state.set_offset(31, "")
	end)

	nvim_tree_events.on_tree_close(function ()
	  bufferline_state.set_offset(0)
	end)
EOF
