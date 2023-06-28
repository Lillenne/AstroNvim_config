return {
  "renerocksai/telekasten.nvim",
  lazy = false,
  config = function()
    require("telekasten").setup {
      home = vim.fn.expand "~/telekasten", -- Put the name of your notes directory here
    }
  end,
}
