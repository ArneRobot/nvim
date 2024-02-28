local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-live-grep-args.nvim'} }
    },
    config = function()
        require("telescope").load_extension("live_grep_args")
    end,
        'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/playground',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'L3MON4D3/LuaSnip'},     -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }
},
{
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
        vim.g.startuptime_tries = 10
    end,
},
--("simrat39/rust-tools.nvim")
{
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
},
"mbbill/undotree",
"tpope/vim-fugitive",
"nvim-lua/plenary.nvim",
"theprimeagen/harpoon",
"jiangmiao/auto-pairs",
{
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
        require('crates').setup()
    end,
},
}, {})
