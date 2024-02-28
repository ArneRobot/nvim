
return {
    "williamboman/mason.nvim",
    dependencies = {
    },
    config = function()
        require("mason").setup()
    end
}

--[[
'VonHeikemen/lsp-zero.nvim',
config = function()
require("lsp-zero").preset({
name = "minimal",
set_lsp_keymap = true,
manage_nvim_cmp = true,
suggest_lsp_servers = true,
}).nvim_workspace().setup()
end,
opts = {
mapping = {
["<CR>"] = require("cmp.mapping").confirm({ select = false }),
}
}
return {
{
'VonHeikemen/lsp-zero.nvim',
opts = {
maping = {
["<CR>"] = cmp.mapping.confirm({ select = false }),
}
},
config = function() require("lsp-zero").preset({
name = "minimal",
set_lsp_keymap = true,
manage_nvim_cmp = true,
suggest_lsp_servers = true,
}).nvim_workspace().setup() end,
}
}
local lsp = require("lsp-zero").preset({
name = "minimal",
set_lsp_keymap = true,
manage_nvim_cmp = true,
suggest_lsp_servers = true,
})
local cmp = require("cmp")

lsp.nvim_workspace()
lsp.setup()

cmp.setup({
maping = {
["<CR>"] = cmp.mapping.confirm({ select = false }),
}
})
vim.diagnostic.config({
virtual_text = true,
signs = true,
update_in_insert = false,
underline = true,
severity_sort = false,
float = true,
})

return {
{
--'VonHeikemen/lsp-zero.nvim',
}
}
]]--
