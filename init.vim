" Plugins
call plug#begin()
	"Theme
	Plug 'Shatur/neovim-ayu'
	Plug 'navarasu/onedark.nvim'
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
	"lualine
	Plug 'nvim-lualine/lualine.nvim'
	" transparency
	Plug 'xiyaowong/nvim-transparent'
	"nvim-tree
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'lukas-reineke/indent-blankline.nvim'
	"barbar tabars
	Plug 'romgrk/barbar.nvim'
call plug#end()
"Theme
source $HOME/.config/nvim/theme.vim
"Set theme
colorscheme onedark
"Plugin config
source $HOME/.config/nvim/lualine.vim
source $HOME/.config/nvim/nvim-tree.vim
source $HOME/.config/nvim/nvim-cmp.vim
source $HOME/.config/nvim/barbar.vim

highlight VertSplit cterm=NONE

" Options
set mouse=a
set number
set encoding=UTF-8
set listchars=tab:\|\ 
set list

" Mapping
tnoremap <Esc> <C-\><C-n>
nnoremap <M-a> :term<CR>
nnoremap <M-d> :qa!<CR>
nnoremap <C-s> :w<CR>

" Starting commands
function StartCommands()
	NvimTreeToggle
endfunction
autocmd VimEnter * call StartCommands()
autocmd TermOpen * setlocal nonumber norelativenumber
