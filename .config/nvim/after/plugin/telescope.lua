local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>t', builtin.find_files, {})
vim.keymap.set('n', '<leader>p', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>qf', builtin.quickfix)
vim.keymap.set('n', '<leader>hh', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>fb', builtin.grep_string)
vim.keymap.set('n', '<leader>re', builtin.lsp_references)
vim.keymap.set('n', '<leader>gg', builtin.lsp_workspace_symbols)

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzf')
