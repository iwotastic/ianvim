return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        -- These are the languages that I want installed
        ensure_installed = {
          "html",
          "css",
          "javascript",
          "typescript",

          "xml",
          "yaml",
          "toml",
          "json",

          "powershell",
          "c_sharp",
          
          "rust",

          "c",

          "python",

          "bash",

          "lua",

          "vim",
          "vimdoc"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  }
}
