return {
  "nvim-telescope/telescope.nvim",
  dependencies = { -- add a new dependency to telescope that is our new plugin
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-media-files.nvim",
  },
  -- the first parameter is the plugin specification
  -- the second is the table of options as set up in Lazy with the `opts` key
  config = function(plugin, opts)
    -- telescope-media-files opts - original opts
    local media = {
      extensions = {
        media_files = {
          -- filetypes whitelist
          -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
          filetypes = { "png", "webp", "jpg", "jpeg", "svg" },
          -- find command (defaults to `fd`)
          find_cmd = "rg",
          -- image_stretch = 1000,
        },
      },
    }

    -- merge options
    local tbl = require("astronvim.utils").extend_tbl(opts, media)

    -- run the core AstroNvim configuration function with the options table
    require "plugins.configs.telescope"(plugin, tbl)
    -- require telescope and load extensions as necessary
    local telescope = require "telescope"
    telescope.setup(tbl)
    telescope.load_extension "file_browser"
    telescope.load_extension "media_files"
  end,
}
