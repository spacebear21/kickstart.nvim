-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- replace surrounding pairs
  'tpope/vim-surround',
  -- highlight other uses of the word under the cursor
  'RRethy/vim-illuminate',
  {
    -- add context on top of window
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      max_lines = 10,
    },
  },
  {
    -- <Esc> mappings
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
}
