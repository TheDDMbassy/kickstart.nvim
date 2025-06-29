-- Highlight todo, notes, etc in comments
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    signs = true,
    highlight = {
      comments_only = false,
    },
    merge_keywords = true,
    keywords = {
      HACK = { alt = { 'DONE' } },
    },
  },
}
