
return {
    {
        'nvim-telescope/telescope.nvim',
        branch = "0.1.x",
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { '<leader>pf', function() require("telescope.builtin").find_files() end, desc = "Project Files" },
            { '<leader>ps', function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Project Files" },
            { '<leader>/', function() require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                previewer = false,
            }) end, desc = "Current Buffer Fuzzy Find" },
            { '<leader>pg', function() require('telescope.builtin').live_grep() end, desc = "Live Grep (search file names)" },
        }
    }
}
