local config = {}

function config.setup()
    vim.g.mapleader = " "
    vim.keymap.set('n', "<leader>q", vim.cmd.Ex)
    vim.keymap.set('n', "<leader>bb", "<C-t>")
    vim.keymap.set('n', "<leader>ww", vim.cmd.w)
    vim.keymap.set('n', "<leader>wq", function()
        vim.cmd.w()
        vim.cmd.Ex()
    end)
    vim.keymap.set('n', "-", "$")
    vim.keymap.set('n', "<leader>oo", "<cmd>Outline<CR>")
    vim.keymap.set('n', "<C-h>", "<C-w>h")
    vim.keymap.set('n', "<C-l>", "<C-w>l")
    vim.keymap.set('n', "<C-d>", "<cmd>lua vim.diagnostic.open_float()<CR>")
    vim.opt.number = true
    vim.showmatch = true
    vim.opt.ignorecase = true
    vim.opt.hlsearch = true
    vim.opt.incsearch = true
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.expandtab = true
    vim.opt.shiftwidth = 2
    vim.opt.autoindent = true
    vim.opt.cc = "80"
    vim.opt.cursorline = true
    vim.opt.ttyfast = true
    vim.opt.scrolloff = 8
    vim.opt.signcolumn = 'yes'
    vim.opt.relativenumber = true
end

return config
