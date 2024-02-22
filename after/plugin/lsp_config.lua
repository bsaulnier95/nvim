require("mason").setup()
require("mason-lspconfig").setup()

 local on_attach = function(_, _)
   vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
   vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
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
