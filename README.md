# Neovim config

## Setup

- Remove any existing configurations by removing the `~/.config/nvim` and `~/.local/share/nvim` folders
- Clone the repo: `git clone git@github.com:runandrew/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`
- Start Neovim: `nvim`
- After initial installation, use Mason to install the formatting and diagnostics libraries. There may be an automatic way of doing this.
  - Find the necessary libraries in the [./lua/plugins/non-ls.lua](none-ls plugin file)
  - Run `:Mason` and then use the UI to install

## Adding new lanugage support

- See if mason-lspconfig has support in this [list](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers)
- If there is support then add to the list in [lsp-config](./lua/plugins/lsp-config.lua) under `ensure_installed`, and then run the setup function (e.g. `lspconfig.tsserver.setup({})`)
- If there is no support, then search in Mason (`:Mason`) for the package and install it (hit `i`)
- Add a new configuration in the [none-ls plugin file](./lua/plugins/none-ls.lua)

## Troubleshooting

_Language server is not working_

- Run `:LspInfo` to confirm that the server is running
