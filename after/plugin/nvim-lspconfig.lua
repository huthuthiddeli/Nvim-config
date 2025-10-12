vim.lsp.enable('pyright')
vim.lsp.enable('jdtls')


-- require('java').setup()
 local lspconfig = require('lspconfig')
 

 lspconfig.jdtls.setup({})
