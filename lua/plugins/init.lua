return {
  -------------------------- plugins ----------------------------
  -- requires
  { "kyazdani42/nvim-web-devicons" },
  { "nvim-lua/plenary.nvim" },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("plugins.nvim-tree")
    end,
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.bufferline")
    end,
  },
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("plugins.lualine")
    end,
  },

  -- telescope
  -- telescope extensions
  { "LinArcX/telescope-env.nvim" },
  { "nvim-telescope/telescope-ui-select.nvim" },
  { "nvim-telescope/telescope-live-grep-args.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    -- opt = true,
    -- cmd = "Telescope",
    config = function()
      require("plugins.telescope")
    end,
  },

  -- dashboard
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('plugins.dashboard')
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require("plugins.treesitter")
    end,
  },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "windwp/nvim-ts-autotag" },

  -- indent-blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("plugins.indent-blankline")
    end,
  },

  -- toggleterm
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.toggleterm")
    end,
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    config = function()
      require("plugins.nvim-surround")
    end,
  },

  -- nvim-autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("plugins.autopairs")
    end,
  },

  -- fidget.nvim
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    config = function()
      require("plugins.fidget")
    end,
  },

  -- todo-comments.nvim
  {
    "folke/todo-comments.nvim",
    config = function()
      require("plugins.todo-comments")
    end,
  },

  -- zen-mode
  {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zen-mode")
    end,
  },

  -- ufo
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      require("plugins.nvim-ufo")
    end,
  },
  {
    "luukvbaal/statuscol.nvim", config = function()
      require("plugins.statuscol")
    end,
  },

  -------------------------- LSP ------------------------------

  -- Installer
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" },
  -- Lspconfig
  { "neovim/nvim-lspconfig" },
  -- Completion engine
  { "hrsh7th/nvim-cmp" },
  -- Snippet engine
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  -- Completion sources
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-nvim-lsp" }, -- { name = nvim_lsp }
  { "hrsh7th/cmp-buffer" }, -- { name = 'buffer' },
  { "hrsh7th/cmp-path" }, -- { name = 'path' }
  { "hrsh7th/cmp-cmdline" }, -- { name = 'cmdline' }
  { "hrsh7th/cmp-nvim-lsp-signature-help" }, -- { name = 'nvim_lsp_signature_help' }
  -- common snippets
  { "rafamadriz/friendly-snippets" },
  -- UI improvement
  { "onsails/lspkind-nvim" },

  ---------------------- Code formatter -----------------------

  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("plugins.nullls")
    end,
  },

  ------------------------- Markdown --------------------------

  -- TODO: don't work
  {
    "iamcco/markdown-preview.nvim",
    enabled = function()
      local cfg = require("config").markdown
      return cfg and cfg.enable
    end,
--    config = function()
--      require("plugins.markdown-preview")
--    end,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  ------------------- Language enhancement --------------------

  -- JSON
  { "b0o/schemastore.nvim" },

  -------------------------- git ------------------------------

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end,
  },

  -------------------------- DAP ------------------------------

  -- nvim-dap
  { "mfussenegger/nvim-dap" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "rcarriga/nvim-dap-ui" },

  -- node
  { "mxsdev/nvim-dap-vscode-js" },

  -- go
  { "leoluz/nvim-dap-go" },

  --[[ 
  -- TODO: python not work yet

  {
  "mfussenegger/nvim-dap-python",
  requires = { "mfussenegger/nvim-dap" },
  config = function()
  require("dap-python").setup("/rs/nn/.local/share/nvim/mason/bin/debugpy")
  end,
  }

  --]]

  ------------------------ colorschemes -------------------------

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    config = function()
      require("plugins.tokyonight")
    end,
  },

  -- gruvbox
  { "rktjmp/lush.nvim" },
  { "ellisonleao/gruvbox.nvim" },

  -------------------------- ai -----------------------------

  -- TODO:
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("plugins.copilot").copilot()
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("plugins.copilot").copilot_cmp()
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    config = function()
      require("plugins.copilot").copilot_chat()
    end,
  },

}
