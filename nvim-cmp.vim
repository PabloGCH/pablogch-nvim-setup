set completeopt=menu,menuone,noselect
lua << EOF
local cmp = require'cmp'
-- Global setup.
cmp.setup({
    snippet = {
        expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
    })
})
-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
    })
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
    { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
    })
-- Setup lspconfig.
local project_library_path = vim.fn.getcwd() .. "/node_modules"
local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}
local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp = require('lspconfig')
-- angular
lsp.angularls.setup {
    cmd = cmd,
    on_new_config = function(new_config,new_root_dir)
    new_config.cmd = cmd
    end,
    on_attach = on_attach,
    capabilities = caps
}
-- typescript and javascript
lsp.tsserver.setup{}
-- Rust

require("rust-tools").setup()



-- css
lsp.cssls.setup{
capabilities = caps
}
-- html
lsp.html.setup{
capabilities = caps
}

EOF
