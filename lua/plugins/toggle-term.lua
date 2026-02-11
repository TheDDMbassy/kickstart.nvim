return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    direction = 'float',
    open_mapping = [[<c-\>]],
    float_opts = {
      border = 'curved',
    },

    -- Run current Elixir file in a new terminal window
    vim.keymap.set('n', '<leader>re', function()
      local file = vim.fn.expand '%:p' -- Get the full path of current file
      -- vim.cmd('TermExec cmd="elixir ' .. vim.fn.shellescape(file) .. '"')
      vim.cmd('TermExec cmd="elixir ' .. file .. '"')
    end, { desc = 'Run Elixir file in ToggleTerm terminal' }),
  },
}
