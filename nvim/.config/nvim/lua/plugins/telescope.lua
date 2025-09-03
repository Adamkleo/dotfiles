return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        local builtin = require('telescope.builtin')
        
        -- Setup telescope
        require('telescope').setup({
            -- your config here
        })
        
        -- Setup keymaps here where telescope is definitely loaded
        vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = 'Find files' })
        vim.keymap.set('n', '<leader>tg', builtin.live_grep, { desc = 'Live grep' })
        vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'Find buffers' })
    end
}