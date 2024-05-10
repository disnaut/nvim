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
                'tsserver',
                'powershell_es',
                'sqlls',
                'angularls',
                'dockerls',
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



