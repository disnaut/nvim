return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function ()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            -- List of parsers that should always be installed
            ensure_installed = {
                'lua',
                'vim',
                'vimdoc',
                'query', 
                'javascript', 
                'typescript', 
                'c_sharp', 
                'gdscript'
            },

            sync_install = false,

            -- Does not auto install buffers if the treesitter CLI is not
            -- installed locally
            auto_install = false,

            highlight = {
                enable = true,

                additional_vim_regex_highlighting = false
            },
        })
    end
}
