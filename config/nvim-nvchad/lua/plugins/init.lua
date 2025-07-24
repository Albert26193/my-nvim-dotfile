return {
  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        sh ={ "shfmt" },
      },
      -- These options will be passed to conform.format()
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },

    }
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  { 
    "ojroques/nvim-osc52", 
    lazy = false ,
    opts = {
      max_length = 0, -- Maximum length of selection (0 for no limit)
      silent = false, -- Disable message on successful copy
      trim = false, -- Trim surrounding whitespaces before copy
    },
    init = function()
      function copy()
        if vim.v.event.operator == "y" and vim.v.event.regname == "+" then
          require("osc52").copy_register("+")
        end
      end
      vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
    end
  },


  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "bash"
      },
    },
  },
  
  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    init = function()
      ---@type rainbow_delimiters.config
      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = 'rainbow-delimiters.strategy.global',
          vim = 'rainbow-delimiters.strategy.local',
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        priority = {
          [''] = 110,
          lua = 210,
        },
        highlight = {
          -- 'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      }
    end,
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  { 
    "fei6409/log-highlight.nvim",
    ft = {'log', 'error', 'err', '0'},
    opt = {
      extension = {'log', 'error', 'err', '0'},
    }
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/vim-vsnip",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      -- "hrsh7th/cmp-omni",
      -- "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-cmdline",
      -- "quangnguyen30192/cmp-nvim-ultisnips",
      -- "rafamadriz/friendly-snippets",
    },
    config = function()
      local status, cmp = pcall(require, "cmp")
      if not status then
        vim.notify("not found nvim-cmp")
        return
      end
      -- set keymap
      cmp.setup({
        preselect = cmp.PreselectMode.Item,
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        snippet = {
          expand = function(args)
            -- For `vsnip` users.
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        sources = cmp.config.sources(
          { { name = "nvim_lsp" }, },
          { { name = "buffer" }, { name = "path" } }),
        mapping = {
          -- ["<leader>i"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<Tab>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
          }),
          ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
          }),
        }
      })
      -- cmp.setup.cmdline("/", {
      --   mapping = cmp.mapping.preset.cmdline(),
      --   sources = {
      --    { name = "buffer" },
      --   },
      -- })
      -- -- cmdline mode
      -- cmp.setup.cmdline(":", {
      --   mapping = cmp.mapping.preset.cmdline(),
      --   sources = cmp.config.sources({
      --     { name = "path" },
      --   }, {
      --       { name = "cmdline" },
      --     }),
      -- })
    end
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    config = function()
      local cmp = require "cmp"
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = { { name = "buffer" } },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },

  ------------------------------------------------------------
  ------------------------- extension ------------------------
  ------------------------------------------------------------
  {
    "FelipeLema/cmp-async-path",
     enabled=false,
  },
  ------------------------------------------------------------
  ----------------------------- end --------------------------
  ------------------------------------------------------------
}
