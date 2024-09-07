return {
    'nvim-telescope/telescope.nvim',
    tag = "0.1.8",
    dependencies = {
        'nvim-lua/plenary.nvim' 
    },
    config = function() 
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fw', function()
            builtin.grep_string()
        end)
        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
