return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false, -- This is the main colorscheme, so don't be lazy
    priority = 1000, -- Load first
    config = function()
      -- Set as colorscheme on load
      vim.cmd([[colorscheme onedark]])
    end
  }
}
