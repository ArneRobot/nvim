
return {
    {
        {
            "nvim-treesitter/nvim-treesitter",
            config = function ()
                vim.opt.smartindent = false
                require("nvim-treesitter").setup({
                    indent = {
                        enable = true
                    }
                })
            end
        },
        "nvim-treesitter/playground",
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            dependencies = {
                -- LSP Support
                { 'neovim/nvim-lspconfig', },             -- Required
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
            {
                'L3MON4D3/LuaSnip',

                config = function ()
                    local ls = require "luasnip"
                    local types = require "luasnip.util.types"
                    local s = ls.snippet
                    local t = ls.text_node
                    local i = ls.insert_node
                    local f = ls.function_node
                    local fmt = require"luasnip.extras.fmt".fmt

                    ls.config.set_config {
                        history = true,
                        updateevents = "TextChanged,TextChangedI",
                    }

                    vim.keymap.set({ "i", "s" }, "<c-k>", function ()
                        if ls.expand_or_jumpable() then
                            ls.expand_or_jump()
                        end
                    end, { silent = true })
                    vim.keymap.set({ "i", "s" }, "<c-j>", function ()
                        if ls.jumpable(-1) then
                            ls.jump(-1)
                        end
                    end, { silent = true })

                    vim.keymap.set("n", "<leader><leader>n", "<cmd>source %<CR>")

                    ls.add_snippets("lua",
                    {
                        s("sn", fmt('s("{}", fmt([[\n{}\n]], {{{}}})),', {i(1), i(2), i(3)})),
                    })

                    --[[ local enum_iterations = function (enum)
                        local lines = vim.api.nvim_buf_set_lines(0, 0, -1, false)
                        local jonas = {}

                        for _, line in ipairs(lines) do
                            if string.match(line, ".*struct " .. enum .. ".*") do
                                table.insert(jonas, )
                                break
                            end
                        end
                    end ]]

                    ls.add_snippets("all",
                    {
                        s("fn", fmt([[
                        fn {}({}){}{} {{
                            {}
                        }}
                        ]], {i(1, "function"), i(2, "args"), f(function(tekst)
                            if string.len(tekst[1][1]) == 0 then
                                return ""
                            else
                                return " -> "
                            end
                        end, {3}), i(3), i(4)})),

                        s("print", fmt([[
                        println!("{}", {});
                        ]], {i(1, "text"), i(2, "args")})),

                        s("arg", fmt([[
                        #[derive(Parser)]
                        struct Args {{
                            #[arg(short, long)]
                            {}
                        }}
                        ]], {i(1, "arg")})),
                        s("get", fmt([[
                        #[get("{}")]
                        fn {}({}) -> {} {{
                            {}
                        }}
                        ]], {
                            i(1, "path/<hei>"),
                            f(function (path)
                                if path[1][1] == "/" then
                                    return "index"
                                end
                                return string.match(path[1][1], "([^/]+)")
                            end, {1}),
                            f(function (path)
                                local out = ""
                                for ord in string.gmatch(path[1][1], "<(.-)>") do
                                    out = out .. ord .. ": &str, "
                                end
                                return string.gsub(out, ", $", "")
                            end, {1}),
                            i(2, "String"),
                            i(3),
                        })),
                    })

                end
            },
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
}
}
