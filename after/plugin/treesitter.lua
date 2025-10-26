require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "c", 
    "lua", 
    "vim", 
    "vimdoc", 
    "query", 
    "markdown", 
    "markdown_inline",
    "html",
    "typescript",
    "javascript",
  },
  indent = {
    enable = true,
  }
}
