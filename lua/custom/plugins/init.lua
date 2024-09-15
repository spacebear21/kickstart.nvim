-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
    -- colorscheme
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = os.getenv 'CATPPUCCIN_FLAVOR',
      no_italic = true,
      transparent_background = true,
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    -- <Esc> mappings
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
  {
    -- Lazygit in nvim
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>gl', '<cmd>LazyGit<cr>', desc = 'Open [L]azygit' },
      { '<leader>gc', '<cmd>LazyGitFilter<cr>', desc = 'Open project [C]ommits' },
      { '<leader>gf', '<cmd>LazyGitFilterCurrentFile<cr>', desc = 'Open [F]ile commits' },
    },
  },
  {
    -- Quickkly open file in GitHub
    'almo7aya/openingh.nvim',
    keys = {
      { '<leader>gb', mode = 'n', '<cmd>OpenInGHFile<cr>', desc = 'Open current file in [B]rowser' },
      { '<leader>gb', mode = 'v', '<cmd>OpenInGHFileLines<cr>', desc = 'Open current selection in [B]rowser' },
    },
  },
}
