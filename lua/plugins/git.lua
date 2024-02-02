return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({})

    -- Prefix git keymaps with `gi`
    vim.keymap.set("n", "<leader>gip", ":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gib", ":Gitsigns toggle_current_line_blame<CR>", {})
  end
}
