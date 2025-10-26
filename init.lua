require('esoubliere').setup()


-- Lazy config
--
--
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- Auto-install lazy.nvim if not present
if not vim.uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'nvim-telescope/telescope.nvim', tag = '0.1.8'},
---  {
---    "nvim-neo-tree/neo-tree.nvim",
---    dependencies = {
---      "nvim-lua/plenary.nvim",
---      "MunifTanjim/nui.nvim",
---      "nvim-tree/nvim-web-devicons"
---    }
---  },
  {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { "nvim-lua/plenary.nvim" }
  },
  {'m4xshen/autoclose.nvim'},
  {'hedyhli/outline.nvim'},
  {'alvan/vim-closetag'},
  {'windwp/nvim-ts-autotag'},
})
