return {
  "dharmx/telescope-media.nvim",
  event = "VeryLazy",
  config = function()
    require("telescope").load_extension "media"
    require("telescope").setup {
      extensions = {
        media = {
          backend = "viu", -- image/gif backend
          backend_options = {
            viu = {
              move = true, -- GIF preview
            },
          },
        },
      },
    }
  end,
}
