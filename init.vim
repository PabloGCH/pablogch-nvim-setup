" Plugins
call plug#begin()
	"lsp-config
	Plug 'neovim/nvim-lspconfig'
	"nvim-tree
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
call plug#end()
source $HOME/.config/nvim/nvim-tree.vim
source $HOME/.config/nvim/nvim-lspconfig.vim

" Options
set mouse=a
set number
set encoding=UTF-8

" Mapping
tnoremap <Esc> <C-\><C-n>
nnoremap <M-t> :tabnew<CR>
nnoremap <M-c> :tabclose<CR>
nnoremap <M-a> :term<CR>

" Starting commands
function StartCommands()
	NvimTreeToggle
endfunction
autocmd VimEnter * call StartCommands()
autocmd TermOpen * setlocal nonumber norelativenumber
