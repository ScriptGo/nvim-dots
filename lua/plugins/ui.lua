return {{
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {"                                                     ",
                                        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                                        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                                        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                                        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                                        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                                        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                                        "                                                     "}

        -- Set menu
        dashboard.section.buttons.val = {dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
                                         dashboard.button("F2", "  > Toggle file explorer",
            "<cmd>NvimTreeToggle<CR>"), dashboard.button("SPC f", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
                                         dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
                                         dashboard.button("SPC r", "󰁯  > Restore Session For Current Directory",
            "<cmd>SessionRestore<CR>"), dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>")}

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
},  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            separator_style = "slant"
        }
    },
    indicator = {
			icon = '▎', -- 分割线
			style = 'underline',
		},
		buffer_close_icon = '󰅖',
		modified_icon = '●',
		close_icon = '',
    offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
    }}
}, {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {"nvim-tree/nvim-web-devicons"},
}, {'navarasu/onedark.nvim', 'luisiacc/gruvbox-baby', {
    'sainnhe/gruvbox-material',
    config = function()
        vim.cmd([[colorscheme gruvbox-material]])
        require('lualine').setup({
            options = {
                theme = 'gruvbox-material'
            }
        })
    end
}},
}
