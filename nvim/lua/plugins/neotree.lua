-- Neotree Configuration
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            enable_git_status = true,
            enable_diagnostics = true,
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                },
            },
            window  = {
                position = "left",
                width = 30,
                mappings = {},
            },
            default_component_configs = {
                container = {
                    enable_character_fade = true,
                },
            },
        })

        -- Transparent NeoTree 
        vim.cmd([[ highlight NeoTreeNormal guibg=NONE ctermbg=NONE ]])
        vim.cmd([[ highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE ]])
    end,
}
