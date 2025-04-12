return {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      disable_netrw = true,
      hijack_netrw = true,
      auto_reload_on_write = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = true,
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = '',
          info = '',
          warning = '',
          error = '',
        },
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
      view = {
        width = 50,
        side = 'left',
        mappings = {
          list = {
            { key = { '<CR>', 'o' }, action = 'edit' },
            { key = 'a', action = 'create' },
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
    }
    vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeFocus<CR>', { desc = 'Focus NvimTree' })
  end,
}
