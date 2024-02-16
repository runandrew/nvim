return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true

    local map = vim.keymap.set
    -- Use 'tab' to accept the suggestion
    map("i", "<C-]>", "<Plug>(copilot-accept-word)", {})

    vim.g.copilot_filetypes = {
      ["*"] = false,
      ["javascript"] = true,
      ["typescript"] = true,
      ["typescriptreact"] = true,
      ["lua"] = true,
      ["java"] = true,
      ["shell"] = true,
    }
  end,
}
