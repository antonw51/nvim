-- Symbol-line module inspired by barbeque.nvim as component for lualine

vim = vim

local lualine_require = require('lualine_require')
local modules = lualine_require.lazy_require {
    highlight = 'lualine.highlight',
    utils = 'lualine.utils.utils',
}

local M = lualine_require.require('lualine.component'):extend()

local default_options = {
    colored = true,
    icon_only = false,
}

function M:init(options)
    M.super.init(self, options)
    self.options = vim.tbl_deep_extend('keep', self.options or {}, default_options)
    self.icon_hl_cache = {}
    self.symbol_hl = {
        [1] = "barbecue_context_file",
        [2] = "barbecue_context_module",
        [3] = "barbecue_context_namespace",
        [4] = "barbecue_context_package",
        [5] = "barbecue_context_class",
        [6] = "barbecue_context_method",
        [7] = "barbecue_context_property",
        [8] = "barbecue_context_field",
        [9] = "barbecue_context_constructor",
        [10] = "barbecue_context_enum",
        [11] = "barbecue_context_interface",
        [12] = "barbecue_context_function",
        [13] = "barbecue_context_variable",
        [14] = "barbecue_context_constant",
        [15] = "barbecue_context_string",
        [16] = "barbecue_context_number",
        [17] = "barbecue_context_boolean",
        [18] = "barbecue_context_array",
        [19] = "barbecue_context_object",
        [20] = "barbecue_context_key",
        [21] = "barbecue_context_null",
        [22] = "barbecue_context_enum_member",
        [23] = "barbecue_context_struct",
        [24] = "barbecue_context_event",
        [25] = "barbecue_context_operator",
        [26] = "barbecue_context_type_parameter",
        [-1] = "barbecue_separator"
    }
    for i = 1, 26 do
        self.symbol_hl[i] = self:create_hl({ fg = modules.utils.extract_highlight_colors(self.symbol_hl[i], 'fg') })
    end
    self.symbol_hl[-1] = self:create_hl({ fg = modules.utils.extract_highlight_colors(self.symbol_hl[-1], 'fg') })
end

function M:construct_icon()
    local icon, icon_highlight_group
    local ok, devicons = pcall(require, 'nvim-web-devicons')
    if ok then
        icon, icon_highlight_group = devicons.get_icon(vim.fn.expand('%:t'))
        if icon == nil then
            icon, icon_highlight_group = devicons.get_icon_by_filetype(vim.bo.filetype)
        end

        if icon == nil and icon_highlight_group == nil then
            icon = ''
            icon_highlight_group = 'DevIconDefault'
        end
        if icon then
            icon = icon .. ' '
        end
        if self.options.colored then
            local highlight_color = modules.utils.extract_highlight_colors(icon_highlight_group, 'fg')
            if highlight_color then
                local default_highlight = self:get_default_hl()
                local icon_highlight = self.icon_hl_cache[highlight_color]
                if not icon_highlight or not modules.highlight.highlight_exists(icon_highlight.name .. '_normal') then
                    icon_highlight = self:create_hl({ fg = highlight_color }, icon_highlight_group)
                    self.icon_hl_cache[highlight_color] = icon_highlight
                end

                icon = self:format_hl(icon_highlight) .. icon .. default_highlight
            end
        end
    else
        ok = vim.fn.exists('*WebDevIconsGetFileTypeSymbol')
        if ok ~= 0 then
            icon = vim.fn.WebDevIconsGetFileTypeSymbol()
            if icon then
                icon = icon .. ' '
            end
        end
    end

    return icon
end

local function format_loc(self)
    local data = require('nvim-navic').get_data() or {}
    local out = { '' }
    for _, section in ipairs(data) do
        table.insert(out,
            self:format_hl(self.symbol_hl[section.kind]) .. section.icon .. self:get_default_hl() .. section.name)
    end
    return table.concat(out, self:format_hl(self.symbol_hl[-1]) .. '  ' .. self:get_default_hl())
end

function M.update_status(self)
    local filenamedata = vim.fn.expand('%:t')
    return self.construct_icon(self) .. (#filenamedata > 1 and filenamedata or 'none') .. (vim.bo.modified and '*' or
        '') .. format_loc(self)
end

return M
