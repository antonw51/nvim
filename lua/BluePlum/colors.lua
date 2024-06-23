vim = vim
-- Custom color overrides for colorschemes
if vim.g.colors_name == 'neofusion' then
    -- Diagnostic highlight groups in Neofusion are a tad kuckoo, fixed 'em up.
    vim.api.nvim_set_hl(0, 'DiagnosticWarn', { link = 'NeofusionBlue' })
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { link = 'DiagnosticWarn' })
    vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { link = 'DiagnosticWarn' })
    vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarn', { link = 'DiagnosticWarn' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { link = 'DiagnosticWarn' })

    vim.api.nvim_set_hl(0, 'DiagnosticInfo', { link = 'NeofusionGreen' })
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { link = 'DiagnosticInfo' })
    vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { link = 'DiagnosticInfo' })
    vim.api.nvim_set_hl(0, 'DiagnosticFloatingInfo', { link = 'DiagnosticInfo' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', { link = 'DiagnosticInfo' })

    vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = '#66def9', bold = true })
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { link = 'DiagnosticHint' })
    vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { link = 'DiagnosticHint' })
    vim.api.nvim_set_hl(0, 'DiagnosticFloatingHint', { link = 'DiagnosticHint' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { link = 'DiagnosticHint' })
end

require('lualine').setup()
