return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.media.drop-nvim" },
  { import = "astrocommunity.colorscheme.nightfox" },
  { import = "astrocommunity.colorscheme.onedarkpro" },
  { import = "astrocommunity.colorscheme.vscode" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.kanagawa" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
