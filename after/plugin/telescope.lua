local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sg', function()
	builtin.grep_string({ search = vim.fn.input("Grep : ") })
end)

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true, -- Enable fuzzy finding
      override_generic_sorter = true, -- Override the generic sorter
      override_file_sorter = true, -- Override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    }
  }
}
require('telescope').load_extension('fzf')
