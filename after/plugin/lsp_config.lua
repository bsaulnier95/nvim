require("mason").setup()
require("mason-lspconfig").setup()

 local on_attach = function(_, _)
   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
   vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
   vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
   vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
 end

 require("lspconfig").lua_ls.setup {}
 require("lspconfig").eslint.setup {}
 require("lspconfig").tsserver.setup {}
 require("lspconfig").volar.setup {}
 require("lspconfig").solargraph.setup {
 	capabilities = capabilities,
   settings = {
     solargraph = {
       diagnostics = false
     }
   }
 }
 require("lspconfig").rubocop.setup {
   cmd = { "rubocop", "-c", ".rubocop_todo.yml", "--lsp" }
 }