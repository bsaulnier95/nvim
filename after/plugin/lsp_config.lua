require("mason").setup()
require("mason-lspconfig").setup()

local on_attach = function(_, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, bufopts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, bufopts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, bufopts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, bufopts)
end

-- Setup LSP servers
require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").eslint.setup { on_attach = on_attach }
require("lspconfig").tsserver.setup { on_attach = on_attach }
require("lspconfig").volar.setup { on_attach = on_attach }
require("lspconfig").solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    solargraph = {
      diagnostics = false
    }
  }
}
require("lspconfig").rubocop.setup {
  on_attach = on_attach,
  cmd = { "rubocop", "-c", ".rubocop_todo.yml", "--lsp" }
}

