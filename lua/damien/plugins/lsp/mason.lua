return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require('mason')
        local lspconfig = require('mason-lspconfig')
        local toolinstaller = require('mason-tool-installer')


        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        lspconfig.setup({
            ensure_installed = {
                'jsonls',
                'lua_ls',
                'htmx',
                'gopls',
                'tsserver',
                'powershell_es'
            },

            automatic_installation = true,
        })

        toolinstaller.setup({
            ensure_installed = {
                'prettier',
                'stylua',
                'htmlhint'
            }
        })
    end,
}



