return {
    "m4xshen/autoclose.nvim",
    config = function ()
        require("autoclose").setup()
    end
    --[[ skapte mange feilmeldinger
    {
        "jiangmiao/auto-pairs",
        event = "InsertEnter",
        config = function()
        end,
    },
    ]]
}
