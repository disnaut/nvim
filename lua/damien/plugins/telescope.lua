return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    config = function ()
        local keymap = vim.keymap

        -- Will require ripgrep or something long those lines
        keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'fuzzy find in cwd' })
        keymap.set('n', '<leader>frf', '<cmd>Telescope oldfiles<cr>', { desc = 'fuzzy find recent files' })
        keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'fuzzy find string in cwd' })
        keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'fuzzy find word under cursor' })
    end
}
