
return {
    {
        "theprimeagen/harpoon",
        keys = {
            { '<leader>a', function() require("harpoon.mark").add_file() end, desc = "Add file" },
            { '<C-e>', function() require("harpoon.ui").toggle_quick_menu() end, desc = "Meny" },
            { '<leader>1', function() require("harpoon.ui").nav_file(1) end, desc = "File 1" },
            { '<leader>2', function() require("harpoon.ui").nav_file(2) end, desc = "File 2" },
            { '<leader>3', function() require("harpoon.ui").nav_file(3) end, desc = "File 3" },
            { '<leader>4', function() require("harpoon.ui").nav_file(4) end, desc = "File 4" },
        }
    }
}
