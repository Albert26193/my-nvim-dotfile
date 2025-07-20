return {

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

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "bash"
      },
    },
  },

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

  { 
    "fei6409/log-highlight.nvim",
    ft = {'log', 'error', 'err', '0'},
    opt = {
      extension = {'log', 'error', 'err', '0'},
    }
  },
}
