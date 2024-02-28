
return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
        config = function()
            vim.cmd([[colorscheme gruvbox]])

            -- Set transparency
            vim.cmd[[ hi Normal guibg=NONE ctermbg=NONE ]]

            -- Set transparency for floating windows (popup menus, etc.)
            vim.cmd[[ hi NormalNC guibg=NONE ctermbg=NONE ]]

            -- Set transparency for the terminal
            vim.cmd[[ hi TermNormal guibg=NONE ctermbg=NONE ]]

            -- SignColumn transparent
            vim.cmd('highlight SignColumn guibg=none ctermbg=none')

        end
    }
}
