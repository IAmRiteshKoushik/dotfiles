return {
  "athar-qadri/scratchpad.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" }, -- don't forget to add this one if you don't have it yet!
  config = function()
    require("scratchpad"):setup()

    -- vim keybind
    vim.keymap.set("n", "<leader>ss", "<cmd>Scratch<CR>", { desc = "Open Scratchpad" })
  end,
}
