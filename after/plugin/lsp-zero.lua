local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    'gopls',
    'ansiblels',
})

local cmp = require('cmp')
lsp.setup_nvim_cmp({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.complete(),
    })
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
