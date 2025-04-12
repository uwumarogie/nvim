# My Neovim Configuration

Welcome to my Neovim configuration! This setup is tailored to enhance productivity, streamline development workflows, and provide a pleasant coding experience. Below you'll find an overview of key mappings, settings, and plugins that I've incorporated into my Neovim environment.

## Table of Contents

- [Key Mappings](#key-mappings)
- [Settings](#settings)
- [Plugins](#plugins)
  - [File Navigation](#file-navigation)
  - [LSP and Autocompletion](#lsp-and-autocompletion)
  - [Syntax Highlighting](#syntax-highlighting)
  - [Git Integration](#git-integration)
  - [Debugging](#debugging)
  - [Utilities](#utilities)
  - [Appearance](#appearance)
- [Installation](#installation)
- [Usage](#usage)
- [Health Check](#health-check)

---

## Key Mappings

Custom key mappings to improve navigation and efficiency:

- **Clear Search Highlighting**: Press `Esc` to clear search highlights.
- **Diagnostic Navigation**:
  - `[d`: Go to previous diagnostic message.
  - `]d`: Go to next diagnostic message.
  - `<leader>e`: Show diagnostic error messages.
  - `<leader>q`: Open diagnostic quickfix list.
- **Terminal Mode**: Press `Esc` twice to exit terminal mode.
- **Split Window Navigation**:
  - `Ctrl + h`: Focus on the left window.
  - `Ctrl + j`: Focus on the bottom window.
  - `Ctrl + k`: Focus on the top window.
  - `Ctrl + l`: Focus on the right window.
- **File Navigation**:
  - `-`: Open [oil.nvim](https://github.com/stevearc/oil.nvim) for filesystem navigation.
  - `<C-n>`: Toggle NvimTree file explorer.
  - `<leader>t`: Focus on NvimTree.
- **Search and Telescope**:
  - `<leader>ph`: Search help tags.
  - `<leader>pk`: Search key mappings.
  - `<leader>pf`: Find files.
  - `<leader>ps`: List available Telescope pickers.
  - `<leader>pw`: Search for the current word.
  - `<leader>pg`: Live grep.
  - `<leader>pd`: Search diagnostics.
  - `<leader>pr`: Resume last Telescope picker.
  - `<leader>p.`: Open recent files.
  - `<leader><leader>`: List buffers.
- **Git Integration**:
  - `<leader>lg`: Open LazyGit interface.
- **Formatting**:
  - `<leader>f`: Format current buffer using [conform.nvim](https://github.com/stevearc/conform.nvim).

---

## Settings

Optimizations and configurations for an enhanced experience:

- **Leader Key**: Set to `<Space>`.
- **Swap File**: Disabled (`swapfile = false`) to prevent swap file creation.
- **Line Numbers**: Both absolute (`number = true`) and relative (`relativenumber = true`) line numbers are enabled.
- **Mouse Support**: Enabled (`mouse = 'a'`) for easier navigation and resizing.
- **Clipboard**: System clipboard integration (`clipboard = 'unnamedplus'`).
- **Search**: Case-insensitive (`ignorecase = true`), smart case sensitivity if uppercase letters are used (`smartcase = true`).
- **Splits**: New splits open to the right (`splitright = true`) and below (`splitbelow = true`).
- **Whitespace Characters**: Displayed for tabs, trailing spaces, and non-breaking spaces (`list = true`).
- **Cursor Line**: Highlighted to easily locate the cursor (`cursorline = true`).
- **Scroll Off**: Keeps 10 lines visible above and below the cursor (`scrolloff = 10`).
- **Update Time**: Reduced for faster UI updates (`updatetime = 250`).
- **Timeout Length**: Shortened for quicker key sequence detection (`timeoutlen = 300`).
- **Command Height**: Set to zero to minimize command line space (`cmdheight = 0`).

---

## Plugins

A curated list of plugins to extend Neovim's functionality.

### File Navigation

- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: A file explorer tree for Neovim.
- **[oil.nvim](https://github.com/stevearc/oil.nvim)**: Edit your filesystem like a buffer.

### LSP and Autocompletion

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Quickstart configurations for the Neovim LSP client.
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: Package manager for LSP servers, DAP servers, linters, and formatters.
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: Bridges mason.nvim with lspconfig.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion engine plugin for Neovim.
  - **Dependencies**:
    - **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: Snippet engine.
    - **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)**: LSP source for nvim-cmp.
    - **[cmp-path](https://github.com/hrsh7th/cmp-path)**: Path source for nvim-cmp.
    - **[cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**: Snippet completions.

### Syntax Highlighting

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Treesitter configurations and abstraction layer.
  - **Configured Languages**: Bash, C, C++, CSS, Dockerfile, Go, HTML, Java, JSON, Lua, Markdown, Python, Rust, TOML, YAML, TypeScript React, MDX, and more.
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)**: Auto close and auto rename HTML tag.

### Git Integration

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git signs in the sign column.
  - **Features**: Git blame, hunk actions, and inline diff.

### Debugging

- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)**: Debug Adapter Protocol client.
- **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)**: UI for nvim-dap.
- **[nvim-dap-go](https://github.com/leoluz/nvim-dap-go)**: Go debugging support.

### Utilities

- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**: Smart and powerful commenting plugin.
- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: Formatter for Neovim, with support for multiple filetypes.
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)**: Highlight, list, and search for todo comments in code.
- **[which-key.nvim](https://github.com/folke/which-key.nvim)**: Displays a popup with possible keybindings.
- **[mini.nvim](https://github.com/echasnovski/mini.nvim)**: Collection of minimal, independent modules.
  - **Used Modules**:
    - **mini.ai**: Text objects.
    - **mini.surround**: Surround functionality.
    - **mini.statusline**: Statusline.

### Appearance

- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**: Tokyo Night color scheme for Neovim.

---

## Installation

To set up this Neovim configuration:

1. **Backup Existing Config**: If you already have a Neovim configuration, back it up before proceeding.

   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone the Repository**: Clone this configuration into your Neovim config directory.

   ```bash
   git clone https://github.com/yourusername/your-nvim-config.git ~/.config/nvim
   ```

3. **Install Neovim**: Ensure Neovim (version 0.9 or newer) is installed.

4. **Install Dependencies**:

   - **Formatter and Linter**: Install `prettierd`, `eslint_d`, `stylua`, `black`, `isort`, etc., depending on your language needs.
   - **Language Servers**: Install LSP servers via `mason.nvim` or ensure they are available in your system.

5. **Launch Neovim**: Open Neovim and let it install the plugins.

   ```bash
   nvim
   ```

---

## Usage

Here are some usage tips and keybindings to get the most out of this configuration.

### General

- **Leader Key**: The `<Space>` key is set as the leader key.
- **Access Keybinding Help**: Press `<leader>?` to bring up buffer-local keybindings via `which-key.nvim`.

### File Navigation

- **Open Oil**: Press `-` to open oil.nvim for filesystem navigation.
- **Toggle File Explorer**: Press `<C-n>` to toggle `nvim-tree.lua`.
- **Focus File Explorer**: Press `<leader>t` to focus on the file explorer.

### Searching with Telescope

- **Find Files**: Press `<leader>pf` to find files.
- **Live Grep**: Press `<leader>pg` to search within files.
- **Resume Last Search**: Press `<leader>pr` to resume the last Telescope picker.
- **List Buffers**: Press `<leader><leader>` to list open buffers.

### Git Integration

- **Open LazyGit**: Press `<leader>lg` to open the LazyGit interface within Neovim.

### LSP and Autocompletion

- **Go to Definition**: Press `gd` to go to the definition of a symbol.
- **Find References**: Press `gr` to find all references of a symbol.
- **Rename Symbol**: Press `<leader>rn` to rename a symbol.
- **Code Actions**: Press `<leader>ca` to view available code actions.

### Formatting

- **Format Buffer**: Press `<leader>f` to format the current buffer using `conform.nvim`.

### Debugging with nvim-dap

- **Start/Continue Debugging**: Press `<F5>`.
- **Step Into**: Press `<F1>`.
- **Step Over**: Press `<F2>`.
- **Step Out**: Press `<F3>`.
- **Toggle Breakpoint**: Press `<leader>b`.
- **Set Conditional Breakpoint**: Press `<leader>B`.

---

## Health Check

Ensure your Neovim environment is appropriately set up:

1. **Check Neovim Version**: Run `:version` in Neovim. The configuration requires Neovim version 0.9.4 or newer.
2. **Install External Tools**: Ensure the following tools are installed and available in your system PATH:
   - `git`
   - `make`
   - `unzip`
   - `ripgrep` (`rg`)
3. **Run Health Check**: In Neovim, execute `:checkhealth` to see if there are any issues.

---

Enjoy your enhanced Neovim experience! If you encounter any issues or have suggestions for improvements, feel free to contribute or open an issue.
