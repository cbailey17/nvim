return {
    "nvim-treesitter/nvim-treesitter", 
    config = function()

        require("lazy").setup({{
            build = ":TSUpdate",
            config = function () 
                local configs = require("nvim-treesitter.configs")

                configs.setup({
                    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "java", "javascript", "html" },
                    sync_install = false,
                    highlight = { enable = true },
                    indent = { enable = true },  
                })
            end
        }})
    end
}
