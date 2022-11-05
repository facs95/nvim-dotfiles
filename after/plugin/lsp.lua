local Remap = require("facs.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Setup nvim-cmp.
local cmp = require("cmp")
local source_mapping = {
  nvim_lsp = "[LSP]",
  nvim_lua = "[Lua]",
  path = "[Path]",
}
local lspkind = require("lspkind")

cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` user.
      -- vim.fn["vsnip#anonymous"](args.body)

      -- For `luasnip` user.
      require("luasnip").lsp_expand(args.body)

      -- For `ultisnips` user.
      -- vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),

  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      local menu = source_mapping[entry.source.name]
      vim_item.menu = menu
      return vim_item
    end,
  },

  sources = {

    { name = "nvim_lsp" },

    -- For vsnip user.
    -- { name = 'vsnip' },

    -- For luasnip user.
    { name = "luasnip" },

    -- For ultisnips user.
    -- { name = 'ultisnips' },

  },
})

local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function()
      nnoremap("gd", function() vim.lsp.buf.definition() end)
      nnoremap("K", function() vim.lsp.buf.hover() end)
      nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
      nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
      nnoremap("[d", function() vim.diagnostic.goto_next() end)
      nnoremap("]d", function() vim.diagnostic.goto_prev() end)
      nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
      nnoremap("<leader>vco", function() vim.lsp.buf.code_action({
          filter = function(code_action)
            if not code_action or not code_action.data then
              return false
            end

            local data = code_action.data.id
            return string.sub(data, #data - 1, #data) == ":0"
          end,
          apply = true
        })
      end)
      nnoremap("gr", function() vim.lsp.buf.references() end)
      nnoremap("<leader>rn", function() vim.lsp.buf.rename() end)
      nnoremap("gi", function() vim.lsp.buf.implementation() end)
      inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
      nnoremap("<leader>f", function() vim.lsp.buf.format() end)

      -- -- format on save
      -- if client.server_capabilities.documentFormattingProvider then
      --   vim.api.nvim_create_autocmd("BufWritePre", {
      --     group = vim.api.nvim_create_augroup("Format", { clear = true }),
      --     buffer = bufnr,
      --     callback = function() vim.lsp.buf.formatting_seq_sync() end
      --   })
      -- end
    end,
  }, _config or {})
end

require("lspconfig").tsserver.setup(config({
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
  cmd = { "typescript-language-server", "--stdio" }
}))

require("lspconfig").tailwindcss.setup(config())

require("lspconfig").pyright.setup(config())

require("lspconfig").gopls.setup(config({
  cmd = { "gopls", "serve" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}))

-- who even uses this?
require("lspconfig").rust_analyzer.setup(config({
  cmd = { "rustup", "run", "nightly", "rust-analyzer" },
  --[[
  settings = {
  rust = {
  unstable_features = true,
  build_on_save = false,
  all_features = true,
  },
  }
  --]]
}))

require("lspconfig").sumneko_lua.setup(config({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}))

local opts = {
  -- whether to highlight the currently hovered symbol
  -- disable if your cpu usage is higher than you want it
  -- or you just hate the highlight
  -- default: true
  highlight_hovered_item = true,

  -- whether to show outline guides
  -- default: true
  show_guides = true,
}


require("symbols-outline").setup(opts)
