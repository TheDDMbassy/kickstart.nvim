return {
  'sQVe/sort.nvim',
  config = function()
    -- DRY
    local sort_cmd = '<Cmd>Sort<CR>'
    local sort_esc_cmd = '<Esc>' .. sort_cmd

    local sort_cmd_reverse = '<Cmd>Sort!<CR>'
    local sort_esc_cmd_reverse = '<Esc>' .. sort_cmd_reverse

    vim.keymap.set('n', '<leader>so', sort_cmd, { desc = '[S][o]rt' })
    vim.keymap.set('n', '<leader>si"', 'vi"' .. sort_esc_cmd, { desc = '[S]ort [i]nside ["]' })
    vim.keymap.set('n', "<leader>si'", "vi'" .. sort_esc_cmd, { desc = "[S]ort [i]nside [']" })
    vim.keymap.set('n', '<leader>si{', 'vi{' .. sort_esc_cmd, { desc = '[S]ort [i]nside [{]' })
    vim.keymap.set('n', '<leader>si(', 'vi(' .. sort_esc_cmd, { desc = '[S]ort [i]nside [(]' })
    vim.keymap.set('n', '<leader>si[', 'vi[' .. sort_esc_cmd, { desc = '[S]ort [i]nside [[]' })
    vim.keymap.set('n', '<leader>sip', 'vip' .. sort_esc_cmd, { desc = '[S]ort [i]nside [p]' })

    -- Reverse sorting
    vim.keymap.set('n', '<leader>sI"', 'vi"' .. sort_esc_cmd_reverse, { desc = 'Reverse [S]ort [I]nside ["]' })
    vim.keymap.set('n', "<leader>sI'", "vi'" .. sort_esc_cmd_reverse, { desc = "Reverse [S]ort [I]nside [']" })
    vim.keymap.set('n', '<leader>sI{', 'vi{' .. sort_esc_cmd_reverse, { desc = 'Reverse [S]ort [I]nside [{]' })
    vim.keymap.set('n', '<leader>sI(', 'vi(' .. sort_esc_cmd_reverse, { desc = 'Reverse [S]ort [I]nside [(]' })
    vim.keymap.set('n', '<leader>sI[', 'vi[' .. sort_esc_cmd_reverse, { desc = 'Reverse [S]ort [I]nside [[]' })
    vim.keymap.set('n', '<leader>sIp', 'vip' .. sort_esc_cmd_reverse, { desc = 'Reverse [S]ort [I]nside [p]' })

    vim.keymap.set('v', '<leader>so', sort_esc_cmd, { desc = '[S][o]rt' })
  end,
}
