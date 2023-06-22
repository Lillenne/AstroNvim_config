return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      follow_current_file = true,
      close_if_last_window = true,

      filesystem = {
        filtered_items = {
          hide_dotfiles = true,
          hide_gitignored = true,
          always_show = { ".config" },
        },
      },
    })
  end,
}
