# Neovim config

## Setup

- After initial installation, use Mason to install the formatting and diagnostics libraries. There may be an automatic way of doing this.
  - Find the necessary libraries in the [./lua/plugins/non-ls.lua](none-ls plugin file)
  - Run `:Mason` and then use the UI to install

## Adding new lanugage support

- See if mason-lspconfig has support in this [list](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers)
- If there is support then add to the list in [./lua/plugins/lsp-config.lua](lsp-config) under `ensure_installed`, and then run the setup function (e.g. `lspconfig.tsserver.setup({})`)
- If there is no support, then search in Mason (`:Mason`) for the package and install it (hit `i`)
- Add a new configuration in [./lua/plugins/non-ls.lua](none-ls plugin file)
