local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<leader>pf', function()
--    require('telescope.builtin').find_files({
--
--    })
--end, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

vim.keymap.set('n', '<leader>/', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        previewer = false,
    })
end)

vim.keymap.set("n", "<leader>pg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")



