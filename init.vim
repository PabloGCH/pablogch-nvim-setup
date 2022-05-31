" Plugins
call plug#begin()
	"nvim-lspconfig
	Plug 'neovim/nvim-lspconfig'
	"nvim-cmp
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
	"nvim-tree
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
call plug#end()
source $HOME/.config/nvim/nvim-tree.vim
source $HOME/.config/nvim/nvim-cmp.vim

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
