vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')
vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')

vim.keymap.set('n', '<C-Up>', '<C-u>zz')
vim.keymap.set('n', '<C-Down>', '<C-d>zz')

-- yank to clipboard with leader
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')

vim.keymap.set('n', 'Q', '<nop>')

-- terminal
vim.keymap.set('n', '<leader>t', ':terminal <CR>')
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- nice additions
vim.keymap.set('n', '<leader>er', function()
    vim.diagnostic.open_float()
end)
vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')
vim.keymap.set('n', '<leader>cn', ':IncRename ')

vim.keymap.set('n', '<leader>i', 'cc')

if vim.g.neovide then
    vim.keymap.set('n', '<F11>', function()
        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
    end)
end

-- Oil
vim.keymap.set('n', '<leader>ex', ':Oil<CR>')

-- Trouble
-- el = error list
vim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')
