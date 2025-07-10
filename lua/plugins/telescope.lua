return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "Telescope",
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-d>"] = require('telescope.actions').delete_buffer,
          },
          n = {
            ["<C-d>"] = require('telescope.actions').delete_buffer,
          },
        },
      }
    })
  end,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Grep text" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Find buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags" },
  },
}
