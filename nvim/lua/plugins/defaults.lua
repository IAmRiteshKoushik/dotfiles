-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  },
  -- change trouble config
  -- {
  --   "folke/trouble.nvim",
  --   -- opts will be merged with the parent spec
  --   opts = { use_diagnostic_signs = true },
  -- },

  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    -- opts = function(_, opts)
    -- table.insert(opts.sources, { name = "emoji" })
    -- end,
    opts = {
      preview = {
        enabled = false
      }
    }
  },

  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
        -- nushell = {},
      },
      inlay_hints = {
        enabled = false
      }
    },
  },

  -- add tsserver and setup with typescript.nvim instead of lspconfig
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = {
  --     "jose-elias-alvarez/typescript.nvim",
  --     init = function()
  --       require("lazyvim.util").lsp.on_attach(function(_, buffer)
  --         -- stylua: ignore
  --         vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
  --         vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
  --       end)
  --     end,
  --   },
  --   ---@class PluginLspOpts
  --   opts = {
  --     ---@type lspconfig.options
  --     servers = {
  --       -- tsserver will be automatically installed with mason and loaded with lspconfig
  --       tsserver = {},
  --     },
  --     -- you can do any additional lsp server setup here
  --     -- return true if you don't want this server to be setup with lspconfig
  --     ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
  --     setup = {
  --       -- example to setup with typescript.nvim
  --       tsserver = function(_, opts)
  --         require("typescript").setup({ server = opts })
  --         return true
  --       end,
  --       -- Specify * to use this function as a fallback for any server
  --       -- ["*"] = function(server, opts) end,
  --     },
  --   },
  -- },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  -- { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "nu",
        "tsx",
        "typescript",
        "sql",
        "rust",
        "go",
        "cpp",
        "java",
        "c",
      })
    end,
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   config = function()
  --     require("nvim-treesitter.configs").setup {
  --       ensure_installed = { "nu" },     -- Ensure the "nu" parser is installed
  --       highlight = {
  --         enable = true,                 -- Enable syntax highlighting
  --       },
  --       -- OPTIONAL!! These enable ts-specific textobjects.
  --       -- So you can hit `yaf` to copy the closest function,
  --       -- `dif` to clear the content of the closest function,
  --       -- or whatever keys you map to what query.
  --       textobjects = {
  --         select = {
  --           enable = true,
  --           keymaps = {
  --             -- You can use the capture groups defined in textobjects.scm
  --             -- For example:
  --             -- Nushell only
  --             ["aP"] = "@pipeline.outer",
  --             ["iP"] = "@pipeline.inner",
  --
  --             -- supported in other languages as well
  --             ["af"] = "@function.outer",
  --             ["if"] = "@function.inner",
  --             ["al"] = "@loop.outer",
  --             ["il"] = "@loop.inner",
  --             ["aC"] = "@conditional.outer",
  --             ["iC"] = "@conditional.inner",
  --             ["iS"] = "@statement.inner",
  --             ["aS"] = "@statement.outer",
  --           },         -- keymaps
  --         },           -- select
  --       },             -- textobjects
  --     }
  --   end,
  --   dependencies = {
  --     -- Install official queries and filetype detection
  --     -- alternatively, see section "Install official queries only"
  --     { "nushell/tree-sitter-nu" },
  --   },
  --   build = ":TSUpdate",
  -- },

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },
}
