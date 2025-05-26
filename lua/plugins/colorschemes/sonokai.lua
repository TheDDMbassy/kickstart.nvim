return {
  'sainnhe/sonokai',
  -- priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    -- Sonokai uses Vimscript-style settings
    vim.g.sonokai_style = 'andromeda' -- or 'andromeda', 'shusia', 'maia', 'espresso', 'atlantis', 'default'
    vim.g.sonokai_enable_italic = 1 -- Enable/Disable italics

    -- Load the colorscheme
    -- vim.cmd.colorscheme 'sonokai'
  end,
}
