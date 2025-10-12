local lspconfig = require('lspconfig')

lspconfig.gopls.setup({
  on_attach = function(client, bufnr)
    -- You can set up keymaps or commands here to work with LSP features
    local buf_set_keymap = vim.api.nvim_buf_set_keymap
    local opts = { noremap=true, silent=true }

    -- Example keymaps:
    buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap(bufnr, 'n', '<leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
  end,
  flags = {
    debounce_text_changes = 150,
  },
  -- Optional: configure gopls settings here
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        nilness = true,
        unusedwrite = true,
      },
      staticcheck = true,
    },
  },
})

