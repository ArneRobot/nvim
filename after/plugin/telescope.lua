local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
    require('telescope.builtin').find_files({
        file_ignore_patterns = {
            "jonas",
        }
    })
end, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)


