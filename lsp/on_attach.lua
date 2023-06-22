return function(client, bufnr)
  vim.cmd "CodeiumEnable"
  if client.name == "rust_analyzer" then
    -- vim.keymap.set("n", "<leader>mb", ":lua require('rust-tools').debuggables.debuggables()<cr>", { buffer = bufnr })
    local rt = require "rust-tools"
    vim.keymap.set("n", "<leader>mb", "<cmd>RustDebuggables<cr>", { buffer = 0 })
  end
end
