return {
  -- stylua: ignore
  { "L3MON4D3/LuaSnip", keys = function() return {} end },

  {
    "hrsh7th/nvim-cmp",
    keys = function()
      local cmp = require("cmp")
      return { { "<C-o>", cmp.mapping.complete(), mode = "i", desc = "complete" } }
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = function()
      return { { "<C-n>", "<cmd> Neotree toggle float reveal=true <cr>", mode = "n", desc = "toggle neo-tree" } }
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = function()
      return {
        { "<leader>ff", "<cmd> Telescope find_files <cr>", desc = "Find Files" },
        { "<leader>fk", "<cmd> Telescope keymaps <cr>", desc = "find keymaps" },
        { "<leader>fw", "<cmd> Telescope live_grep <cr>", desc = "Find Word" },
        { "<leader>gt", "<cmd> Telescope git_status <cr>", desc = "Git Status" },
        { "<leader>gc", "<cmd> Telescope git_commits <cr>", desc = "Git Commits" },
        { "<leader>gs", "<cmd> Telescope git_stash <cr>", desc = "Git Stash" },
        { "<leader>fh", "<cmd> Telescope help_tags <cr>", desc = "Find Help" },
      }
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    keys = function()
      return {
        { "<leader>ph", "<cmd> Gitsigns preview_hunk <cr>", desc = "preview hunk" },
        { "<leader>rh", "<cmd> Gitsigns reset_hunk <cr>", desc = "reset hunk" },
        { "<leader>gb", "<cmd> Gitsigns blame_line <cr>", desc = "blame line" },
      }
    end,
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
        -- stylua: ignore start
        keys[#keys + 1] = { "K", "<cmd> Lspsaga hover_doc <cr>" }
        keys[#keys + 1] = { "gd", "<cmd> Lspsaga goto_definition <cr>", desc = "LSP goto definition" }
        keys[#keys + 1] = { "gD", "<cmd> Lspsaga peek_definition <cr>", desc = "LSP peek definition" }
        keys[#keys + 1] = { "<leader>rn", "<cmd> Lspsaga rename<cr>", desc = "LSP rename" }
        keys[#keys + 1] = { "<leader>d", "<cmd> Lspsaga show_line_diagnostics<cr>", desc = "LSP show line diagnostics" }
        keys[#keys + 1] = { "<leader>[d", "<cmd> Lspsaga diagnostics_jump_prev <cr>", desc = "LSP jump previous diagnostic" }
        keys[#keys + 1] = { "<leader>]d", "<cmd> Lspsaga diagnostics_jump_next <cr>", desc = "LSP jump next diagnos" }
      -- stylua: ignore end
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    keys = function()
      return { { "<leader>mp", "<cmd> MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } }
    end,
  },

  {
    "NvChad/nvterm",
    keys = function()
      local nvterm = require("nvterm.terminal")
      -- stylua: ignore
      return {
        { "<M-h>", function() nvterm.toggle("horizontal") end, mode = { "t", "n" }, desc = "toggle horizontal terminal" },
        { "<M-v>", function() nvterm.toggle("vertical") end, mode = { "t", "n" }, desc = "toggle vertical terminal" },
        { "<M-i>", function() nvterm.toggle("float") end, mode = { "t", "n" }, desc = "toggle floating vertical" },
      }
    end,
  },

  {
    "folke/flash.nvim",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = function()
      return {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        { "S", mode = { "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
      }
    end,
  },
}
