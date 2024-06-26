return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        { 'antosha417/nvim-lsp-file-operations', config = true },
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
    },
    config = function()
        local lspconfig = require('lspconfig')

        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        local keymap = vim.keymap

        local opts = { noremap = true, silent = true }

        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            -- keybinds
            opts.desc = 'Show LSP references'
            keymap.set('n', 'gR', '<cmd>Telescope lsp_references<CR>', opts)

            opts.desc = 'Go to declaration'
            keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

            opts.desc = 'Show LSP definitions'
            keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opts)

            opts.desc = 'Show LSP implementations'
            keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)

            opts.desc = 'Show LSP type definitions'
            keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<CR>', opts)

            opts.desc = 'Show LSP definitions'
            keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opts)

            opts.desc = 'Show available code actions'
            keymap.set({ 'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)

            opts.desc = 'Show buffer diagnostics'
            keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<CR>', opts)

            opts.desc = 'Show line diagnostics'
            keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts) -- show diagnostics for line

            opts.desc = 'Go to previous diagnostic'
            keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

            opts.desc = 'Go to next diagnostic'
            keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

            opts.desc = "Show documentation for what is under cursor"
            keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

            opts.desc = 'Restart LSP'
            keymap.set('n', '<leader>rs', ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
          local hl = "DiagnosticSign" .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig['lua_ls'].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                            [vim.fn.stdpath('config') .. '/lua'] = true,
                        }
                    },
                },
            },
        })

        lspconfig['tsserver'].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { 'ts', 'typescript', 'html' }
        })
        lspconfig['sqlls'].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig['jsonls'].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig['gopls'].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig['powershell_es'].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })
    end
}
