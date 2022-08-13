local M = {}

M.config = function()
  lvim.plugins = {
    {
      "declancm/cinnamon.nvim",
      config = function()
        require("cinnamon").setup {
          default_keymaps = true,
          extra_keymaps = true,
          extended_keymaps = false,
          centered = true,
          -- scroll_limit = 100,
        }
      end,
      event = "BufRead",
      disable = lvim.builtin.smooth_scroll ~= "cinnamon",
    }
  }
end

return M
