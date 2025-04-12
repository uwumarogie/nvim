return {
  'windwp/nvim-ts-autotag',
  event = 'InsertEnter',
  setup = function() end,
  did_setup = false,
  get_opts = function()
    return {
      enable = true,
      filetypes = {
        'html',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'svelte',
        'vue',
        'tsx',
        'jsx',
        'rescript',
        'xml',
        'php',
        'markdown',
        'mdx',
        'md',
      },
    }
  end,
  config = function(_, opts)
    require('nvim-ts-autotag').setup(opts)
  end,
}
