return {
 "folke/trouble.nvim",
    event="VeryLazy",
 -- dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
    keys = {
            {"<leader>vrr","<cmd>TroubleToggle lsp_references<cr>", mode = {"n","v"}},
    }
}
