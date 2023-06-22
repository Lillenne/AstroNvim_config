return {
  "ThePrimeagen/harpoon",
  dependencies = { 
    "nvim-lua/plenary.nvim",
  },
  keys = { 
    { "<leader>m", desc = "Harpoon"},
    { "<leader>mg", desc = "goto"},
    { "<leader>mm", "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Mark file"},
    { "<leader>mo", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle menu"},
    { "<leader>mg1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "Nav to file 1"},
    { "<leader>mg2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "Nav to file 2"},
    { "<leader>mg3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "Nav to file 3"},
    { "<leader>mg4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "Nav to file 4"},
    { "<leader>mg5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", desc = "Nav to file 5"},
    { "<leader>mg6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", desc = "Nav to file 6"},
    { "<leader>mg7", "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", desc = "Nav to file 7"},
    { "<leader>mg8", "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", desc = "Nav to file 8"},
    { "<leader>mg9", "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", desc = "Nav to file 9"},
  },
  config = function()
    require("harpoon").setup()
    require("telescope").load_extension("harpoon")
  end
}
