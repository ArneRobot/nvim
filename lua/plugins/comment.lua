return {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function ()
        require("Comment").setup({
            opleader = {
                line = "<leader>c",
                block = "<leader>b",
            },
            toggler = {
                line = "<leader>cc",
                block = "<leader>bb",
            }
        })
    end
}
