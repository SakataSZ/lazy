return {
  -- disabel some plugins
  { "folke/which-key.nvim", enabled = false },
  { "echasnovski/mini.surround", enabled = false },

  -- load customized core plugins config
  require("plugins.core.ui"),
  require("plugins.core.treesitter"),

  -- copilot: auto complete
  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      vim.g.copilot_filetypes = {
        ["*"] = true,
      }
    end,
  },

  -- lspsaga: better lsp UI
  {
    "nvimdev/lspsaga.nvim",
    lazy = true,
    event = "LspAttach",
    config = function(_, opts)
      require("lspsaga").setup(opts)
    end,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}
