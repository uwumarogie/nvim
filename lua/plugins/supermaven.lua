return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      ignore_filetypes = { 'gitcommit', 'gitrebase', 'gitconfig', 'gitignore', 'gitmodules', 'text' },
      color = {
        suggestion_color = '#008000',
        cterm = 244,
      },
      log_level = 'warn',
      disable_keymaps = false,
    }
  end,
}
