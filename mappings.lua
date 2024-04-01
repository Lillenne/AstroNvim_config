-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>bN"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>tdi"] = { ":normal! i TODO: <CR>i ", desc = "Add TODO" },
    ["<leader>o"] = false,
    ["<leader>."] = { ":Telescope file_browser<CR>", desc = "Find Dirs" },
    ["<leader>,"] = { ":Telescope buffers<CR>", desc = "Find Dirs" },
    ["<leader>pp"] = { ":Telescope projects<CR>", desc = "Find Dirs" },
    ["<leader>le"] = { ":Telescope diagnostics<CR>", desc = "Find Diagnostics" },
    ["<leader>f."] = { ":Telescope current_buffer_fuzzy_find<CR>", desc = "Find in Buffer" },
    ["<leader><Space>"] = { ":Telescope live_grep<CR>", desc = "Search Words" },
    ["<C-x>"] = { ":x<CR>", desc = "Save & Exit" },
    ["<leader>gg"] = { ":Neogit<CR>", desc = "Git" },
    ["<leader>ot"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-x>"] = { "<ESC>:x<CR>", desc = "Save & Exit" },
  },
}
