return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = { left = "\u{e621}", right = "\u{e621}"},
        section_separators = { left = "", right = ""},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {
          {  
            "filename",
            symbols = {
              modified = "\u{ea71}",
              readonly = "[Read Only]",
              unnamed = "[No Name]",
              newfile = "[New]"
            }
          }
        },
        lualine_c = {"branch", "diff", "diagnostics"},
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {"filename"},
        lualine_c = {},
        lualine_x = {"position"},
        lualine_y = {"location"},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
    _/_/_/                      _/      _/  _/                 
     _/      _/_/_/  _/_/_/    _/      _/      _/_/_/  _/_/    
    _/    _/    _/  _/    _/  _/      _/  _/  _/    _/    _/   
   _/    _/    _/  _/    _/    _/  _/    _/  _/    _/    _/    
_/_/_/    _/_/_/  _/    _/      _/      _/  _/    _/    _/     
]],
          keys = {
            { icon = "\u{ea7f}", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = "\u{eae6}", key = "l", desc = "Manage Lazy Plugins...", action = ":Lazy" },
            { icon = "\u{ea76}", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
