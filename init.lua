-- local vim = vim

vim.cmd('set termguicolors')
vim.g.mapleader = ' '

-- Configure Neovide

-- PERF: Fully optimized for antonw51's usage.

if vim.g.neovide then
    vim.o.guifont = 'JetBrainsMono Nerd Font Mono:h12'
    vim.opt.linespace = 0

    vim.g.neovide_padding_left = 8
    vim.g.neovide_padding_bottom = 8
    vim.g.neovide_padding_right = 8
    vim.g.neovide_padding_top = 8

    vim.g.neovide_scroll_animation_length = 0.3

    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_refresh_rate_idle = 30

    -- not blinking smoothly?

    vim.g.neovide_hide_mouse_when_typing = true
end

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Nececities
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end,
    },
    {
        'ggandor/leap.nvim',
        config = function()
            require('leap').add_default_mappings()
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            vim.cmd('TSUpdate')
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'lua',
                    'vim',
                    'typescript',
                    'javascript',
                    'css',
                    'html',
                },
                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end,
    },
    {
        'nvim-tree/nvim-web-devicons',
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
            'folke/todo-comments.nvim',
        },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files)
            vim.keymap.set('n', '<leader>bb', builtin.buffers) -- bb = browser buffers
            vim.keymap.set('n', '<leader>fs', function()
                builtin.grep_string({
                    search = vim.fn.input('Search string > '),
                })
            end)                                           -- fs = file search
            vim.keymap.set('n', '<leader>ft', ':TodoTelescope<CR>') -- ft = find todo's (todo-comments.nvim)
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'SmiteshP/nvim-navic', 'utilyre/barbecue.nvim' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'auto',
                    component_separators = {
                        left = '|',
                        right = '|',
                    },
                    section_separators = {
                        left = '',
                        right = '',
                    },
                },
                sections = {
                    lualine_a = {
                        {
                            'mode',
                            fmt = function(str)
                                return str:sub(1, 1)
                            end,
                        },
                    },
                    lualine_c = {
                        require('BluePlum.symbols'),
                    },
                },
            })
        end,
    },
    -- Colorscheme
    {
        -- old: marko-cerovac/material.nvim, with deepocean
        'diegoulloao/neofusion.nvim',
        config = function()
            vim.g.background = 'dark'
            vim.cmd('colorscheme neofusion')
        end,
    },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
    },

    -- LSP Support
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'hrsh7th/cmp-nvim-lsp',
            },
        },
    },

    -- LSP additions

    {
        'smjonas/inc-rename.nvim',
        dependencies = {
            {
                'stevearc/dressing.nvim',
            },
        },
        config = function()
            require('inc_rename').setup({
                input_buffer_type = 'dressing',
            })
        end,
    },
    -- Code folding
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            {
                'kevinhwang91/promise-async',
            },
        },
        config = function()
            -- Implement custom marker provider.
            local CustomMarkerProvider = {}

            function CustomMarkerProvider.getFolds(bufnr)
                local buf = require('ufo.bufmanager'):get(bufnr)
                if not buf then
                    return
                end

                local openRegex = '#region'
                local closeRegex = '#endregion'

                local summaryRegx = openRegex .. '%s*(.*)'

                local ranges = {}
                local stack = {}
                local lines = buf:lines(1, -1)

                for lnum, line in ipairs(lines) do
                    -- Check for start marker
                    if line:match(openRegex) then
                        table.insert(stack, lnum)
                        -- Check for end marker
                    elseif line:match(closeRegex) then
                        local startLnum = table.remove(stack)
                        if startLnum then
                            local summary = lines[startLnum]:match(summaryRegx)
                            table.insert(ranges, require('ufo.model.foldingrange').new(startLnum - 1, lnum - 1, summary))
                        end
                    end
                end

                return ranges
            end

            local function customizeSelector(bufnr)
                local ranges = CustomMarkerProvider.getFolds(bufnr)
                local maybe_additional_ranges = require('ufo').getFolds(bufnr, 'treesitter')
                if next(maybe_additional_ranges) ~= nil then
                    ranges = vim.list_extend(ranges, maybe_additional_ranges)
                else
                    ranges = vim.list_extend(ranges, require('ufo').getFolds(bufnr, 'indent'))
                end
                return ranges
            end

            require('ufo').setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return customizeSelector
                end,
            })
        end,
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {
                'L3MON4D3/LuaSnip',
            },
            {
                'hrsh7th/cmp-calc',
            },
        },
    },
    {
        'L3MON4D3/LuaSnip',
        config = function()
            require('luasnip.loaders.from_snipmate').lazy_load()
        end,
    },

    -- Git?
    {
        'tpope/vim-fugitive',
    },
    {
        'sindrets/diffview.nvim',
    },

    -- Some nice additions
    {
        'nvim-treesitter/playground',
    },
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    },
    -- {
    --     'SmiteshP/nvim-navbuddy',
    --     dependencies = {
    --         'SmiteshP/nvim-navic',
    --         'MunifTanjim/nui.nvim',
    --     },
    --     opts = {
    --         lsp = {
    --             auto_attach = true,
    --         },
    --     },
    -- },
    {
        'IogaMaster/neocord',
        event = 'VeryLazy',
        config = function()
            require('neocord').setup()
        end,
    },
    {
        'ray-x/lsp_signature.nvim',
        config = function()
            require('lsp_signature').setup({
                hint_enable = false,
            })
        end,
    },
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('todo-comments').setup()
        end,
    },
    {
        'lukas-reineke/indent-blankline.nvim',
    },
    {
        'mhartington/formatter.nvim',
        config = function()
            local util = require('formatter.util')

            local function prettier()
                return {
                    exe = 'prettier',
                    args = {
                        '--config-precedence',
                        'prefer-file',
                        '--single-quote',
                        '--use-tabs',
                        '--trailing-comma',
                        'es5',
                        '--bracket-same-line',
                        '--insert-pragma',
                        '--stdin-filepath',
                        vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
                    },
                    stdin = true,
                }
            end

            require('formatter').setup({
                filetype = {
                    javascript = {
                        prettier,
                    },
                    typescript = {
                        prettier,
                    },
                    markdown = {
                        prettier,
                    },
                    css = {
                        prettier,
                    },
                    json = {
                        prettier,
                    },
                    html = {
                        prettier,
                    },
                    scss = {
                        prettier,
                    },

                    lua = {
                        function()
                            return {
                                exe = 'stylua',
                                args = {
                                    '--indent-type',
                                    'Tabs',
                                    '--line-endings',
                                    'Unix',
                                    '--quote-style',
                                    'AutoPreferSingle',
                                    '--column-width',
                                    vim.api.nvim_command_output('echo &columns'),
                                    '-',
                                },
                                stdin = true,
                            }
                        end,
                    },
                },
            })

            local augroup = vim.api.nvim_create_augroup
            local autocmd = vim.api.nvim_create_autocmd
            augroup('__formatter__', {
                clear = true,
            })
            autocmd('BufWritePost', {
                group = '__formatter__',
                command = ':FormatWrite',
            })
        end,
    },
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons', -- optional dependency
        },
        config = function()
            require('barbecue').setup()
            require('barbecue.ui').toggle(false)
        end,
    },
    {
        'Saecki/crates.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        tag = 'stable',
        config = function()
            require('crates').setup()
        end,
    },
    {
        'echasnovski/mini.comment',
        config = function()
            require('mini.comment').setup({
                options = {
                    ignore_blank_line = true,
                },
            })
        end,
    },

    -- Code actions
    {
        'weilbith/nvim-code-action-menu',
    },
    {
        'kosayoda/nvim-lightbulb',
        config = function()
            require('nvim-lightbulb').setup({
                autocmd = {
                    enabled = true,
                },
            })
        end,
    },

    -- File explorer
    {
        'stevearc/oil.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('oil').setup({
                columns = {
                    'icon',
                    'size',
                },
                view_options = {
                    show_hidden = true,
                },
                keymaps = {
                    ['..'] = 'actions.parent',
                },
            })
        end,
    },

    -- Cursor specific additions
    {
        'yamatsum/nvim-cursorline',
        config = function()
            require('nvim-cursorline').setup({
                cursorline = {
                    enable = true,
                    timeout = 100,
                    number = false,
                },
                cursorword = {
                    enable = true,
                },
            })
        end,
    },
}, {
    -- Lazy config
})

require('BluePlum.set')
require('BluePlum.remap')
require('BluePlum.colors')

-- vim.g.rustaceanvim = {
--     server = {
--         cmd = function()
--             local mason_registry = require('mason-registry')
--             local package = mason_registry.get_package('rust-analyzer')
--             local install_dir = package:get_install_path()
--             -- find out where the binary is in the install dir, and append it to the install dir
--             local ra_bin = install_dir .. '/' .. 'rust-analyzer.exe' -- this may need tweaking
--             return {
--                 ra_bin,
--             } -- you can add additional args like `'--logfile', '/path/to/logfile'` to the list
--         end,
--     },
-- }
