function ColorMyPencils(color)
    color = color or "gruvbox"
    --require('onedark').setup {
    --    style = 'darker'
    --}
    vim.cmd.colorscheme(color)

    -- endrer fargen til linjenummerene
    --vim.api.nvim_set_hl(0, 'LineNr', { fg='#A1A0D8', bold=true })
end

ColorMyPencils()

