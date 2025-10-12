-- ~/.config/nvim/after/plugin/cmp_config.lua
local cmp = require'cmp'

cmp.setup({
  -- Configure sources for autocompletion
  sources = {
    { name = 'nvim_lsp' },       -- LSP source (this will include clangd)
    { name = 'buffer' },         -- Buffer source (for text in the current file)
    { name = 'path' },           -- Path source (for file paths)
    { name = 'cmdline' },        -- Cmdline source (for command-line completion)
  },

  -- Enable completion for all file types
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)  -- If you're using luasnip
    end,
  },

  -- Keybindings for completion (customize as you like)
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.abort(),
  },

  -- Formatting and appearance of completion items
  formatting = {
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = '[LSP]',
        buffer = '[Buffer]',
        path = '[Path]',
        cmdline = '[Cmd]',
      })[entry.source.name]
      return vim_item
    end
  },
})

