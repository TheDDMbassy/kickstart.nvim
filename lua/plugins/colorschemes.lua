return {
  { -- lua/plugins/rose-pine.lua
    'rose-pine/neovim',
    opts = {
      variant = 'main', -- auto, main, moon, or dawn (light)
      dark_variant = 'main', -- main, moon, or dawn (light)
    },
    name = 'rose-pine',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function(_, opts)
      require('rose-pine').setup(opts)
      -- vim.cmd.colorscheme 'rose-pine'
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = {},
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = true }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.g.everforest_background = 'hard' -- 'soft', 'medium' (default), or 'hard'
      vim.g.everforest_better_performance = 1
      -- vim.cmd.colorscheme 'everforest'
    end,
  },
  {
    'marko-cerovac/material.nvim',
    priority = 1000,
    config = function()
      -- vim.g.material_style = 'darker'
      vim.g.material_style = 'deep ocean'
      -- vim.g.material_style = 'lighter'
      -- vim.g.material_style = 'oceanic'
      -- vim.g.material_style = 'palenight'
      require('material').setup {
        styles = {
          comments = { italic = true },
          functions = { bold = true },
        },
      }
    end,
  },
}
