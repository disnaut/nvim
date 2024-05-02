return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    keys = {
        { 
            '<leader>te', 
            vim.cmd.NvimTreeToggle, 
            { desc = 'Open/Close file explorer' }
        },
        {
            '<leader>teh', 
            vim.cmd.NvimTreeFindFileToggle, 
            { desc = 'Open/Close file explorer with cursor on this file' }
        },
        {
            '<leader>ce', 
            vim.cmd.NvimTreeCollapse, 
            { desc = 'Collapse file explorer' }
        },
        {
            '<leader>re', 
            vim.cmd.NvimTreeRefresh, 
            { desc = 'Refresh file explorer' }
        },
    },
    config = function ()
        local nvimtree = require('nvim-tree')

        -- disables netrw when initialized
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true
            },

            renderer = {
                indent_markers = {
                    enable = true
                }
            },

            -- Don't need to select split
            actions = {
                open_file = {
                    window_picker = {
                        enable = false
                    }
                }
            },
        })

        vim.opt.termguicolors = true
        
        -- Keeps transparency
        vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
        
        -- Defaults being used for now
        nvimtree.setup()
    end,
}
