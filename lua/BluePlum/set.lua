-- Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Four space tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 0 noexpandtab
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

-- Persistant undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = './.vim/undodir'
vim.opt.undofile = true

-- Better search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10

vim.opt.updatetime = 50

-- Terminal configuration
local os = vim.loop.os_uname().sysname
if os == 'Windows' then
    vim.opt.shell = 'pwsh.exe'
    vim.g.terminal_emulator = 'pwsh'
    vim.opt.shellcmdflag = '-c'
    vim.opt.shellxquote = ''
elseif os == 'Linux' then
    vim.opt.shell = 'bash'
    vim.g.terminal_emulator = 'bash'
end

-- Line folding
vim.o.foldlevel = 99
vim.o.foldenable = true
vim.o.foldlevelstart = 99
