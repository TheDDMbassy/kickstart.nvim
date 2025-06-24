return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'jfpedroza/neotest-elixir',
    'zidhuss/neotest-minitest',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-elixir',
        require 'neotest-minitest',
      },
    }

    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { desc = desc })
    end

    local cmd_prefix = ':lua require("neotest")'
    local run_prefix = cmd_prefix .. '.run'
    local out_prefix = cmd_prefix .. '.output'
    local sum_prefix = cmd_prefix .. '.summary'
    local jump_prefix = cmd_prefix .. '.jump'

    -- Test Running Keybindings
    map('<leader>tl', run_prefix .. '.run()<CR>', 'Neo[T]est: [l]aunch/run test')
    map('<leader>tx', run_prefix .. '.stop()<CR>', 'Neo[T]est: Stop test (i.e. click "[X]")')
    map('<leader>ta', run_prefix .. '.run(vim.fn.expand("%"))<CR>', 'Neo[T]est: Run [a]ll tests in the file')

    map('<leader>ti', out_prefix .. '.open()<CR>', 'Neo[T]est: [i]nspect output in hover mode')
    map('<leader>to', out_prefix .. '.open({enter = true})<CR>', 'Neo[T]est: [o]pen output in copy mode')
    map('<leader>tp', cmd_prefix .. '.output_panel.toggle()', 'Neo[T]est: Toggle output [p]anel')
    map('<leader>tc', cmd_prefix .. '.output_panel.clear()', 'Neo[T]est: [C]lear output panel')

    map('<leader>ts', sum_prefix .. '.toggle()<CR>', 'Neo[T]est: Toggle [s]ummary')

    map('<leader>tn', jump_prefix .. '.next({ status = "failed" })<CR>', 'Neo[T]est: Jump to [n]ext failed test')
    map('<leader>tN', jump_prefix .. '.prev({ status = "failed" })<CR>', 'Neo[T]est: Jump to [p]revious failed test')
  end,
}
