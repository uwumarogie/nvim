return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'cpp',
      'css',
      'dockerfile',
      'go',
      'html',
      'java',
      'json',
      'lua',
      'markdown',
      'python',
      'rust',
      'toml',
      'yaml',
      'tsx',
      'markdown',
      'markdown_inline',
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}
