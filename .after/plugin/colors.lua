function ColorMyPencils(color)
    color = color or "gruvbox"
    --require('onedark').setup {
    --    style = 'darker'
    --}
    vim.cmd.colorscheme(color)

    -- endrer fargen til linjenummerene

    --vim.api.nvim_set_hl(0, 'LineNr', { fg='#A1A0D8', bold=true })
    -- Set transparency
    vim.cmd[[ hi Normal guibg=NONE ctermbg=NONE ]]

    -- Set transparency for floating windows (popup menus, etc.)
    vim.cmd[[ hi NormalNC guibg=NONE ctermbg=NONE ]]

    -- Set transparency for the terminal
    vim.cmd[[ hi TermNormal guibg=NONE ctermbg=NONE ]]

    end

ColorMyPencils()

