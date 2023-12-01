return {
  { "L3MON4D3/LuaSnip", enabled = false },
  { "folke/which-key.nvim", enabled = false },
  {
    "github/copilot.vim",
    event = "BufRead",
    config = function()
      vim.g.copilot_filetypes = {
        ["*"] = true,
      }
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    lazy = true,
    event = "LspAttach",
    config = function(_, opts)
      require("lspsaga").setup(opts)
    end,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
