-- return {}
return {
  "Exafunction/codeium.vim",
  lazy = false,
  -- cmd = "Codeium",
  init = function()
    vim.g.codeium_enabled = 1
    vim.g.codeium_disable_bindings = 1
    vim.g.codeium_idle_delay = 10
    -- match function
  end,
  config = function()
    vim.keymap.set("i", "<C-Right>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
    vim.keymap.set("i", "<C-Down>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
    vim.keymap.set("i", "<C-Up>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
    vim.keymap.set("i", "<C-Left>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Complete"]() end, { expr = true })
  end,
}
