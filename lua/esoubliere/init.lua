local config = {}

function config.setup()
    vim.g.mapleader = " "
    vim.keymap.set('n', "<leader>qq", vim.cmd.Ex)
    vim.keymap.set('n', "<leader>bb", "<C-t>")
    vim.keymap.set('n', "<leader>ww", vim.cmd.w)
    vim.keymap.set('n', "<leader>wq", function()
        vim.cmd.w()
        vim.cmd.Ex()
    end)
    vim.keymap.set('n', "<leader>oo", "<cmd>Outline<CR>")
    vim.keymap.set('n', "<leader>of", "<cmd>OutlineFocus<CR>")
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
end

return config
