require('nvim-tree').setup({
    sort_by = 'case_sensitive',
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = 'u', action='dir_up'}
            }
        }
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false
    },
    hijack_cursor = false,
    on_attach = function(bufnr)
        local bufmap = function(lhs, rhs, desc)
            vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- See :help nvim-tree.api
        local api = require('nvim-tree.api')

        bufmap('L', api.node.open.edit, 'Expand folder or go to file')
        bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
        bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
    end
})

-- vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
