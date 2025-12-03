return {
  {
    "machakann/vim-sandwich",
    name = "vim-sandwich",
    opts = {},
    config = function() end,
  },
  {
    "knsh14/vim-github-link",
    name = "vim-github-link",
    opts = {},
    config = function() end,
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("octo").setup({
        use_local_fs = false,
        enable_builtin = false,
        default_remote = {"upstream", "origin"},
        default_merge_method = "squash",
        ssh_aliases = {},
        picker = "telescope",
        comment_icon = "▎",
        outdated_icon = "󰅒 ",
        resolved_icon = " ",
        reaction_viewer_hint_icon = " ",
        user_icon = " ",
        timeline_marker = " ",
        timeline_indent = 2,
        right_bubble_delimiter = "",
        left_bubble_delimiter = "",
        github_hostname = "",
        snippet_context_lines = 4,
        gh_cmd = "gh",
        timeout = 5000,
        ui = {
          use_signcolumn = false,
          use_signstatus = true,
        },
        issues = {
          order_by = {
            field = "CREATED_AT",
            direction = "DESC"
          }
        },
        pull_requests = {
          order_by = {
            field = "CREATED_AT",
            direction = "DESC"
          },
          always_select_remote_on_create = false,
        },
        file_panel = {
          size = 10,
          use_icons = true
        },
        mappings_disable_default = false,
      })
    end,
  },
  -- {
  --   "Joakker/lua-json5",
  --   lazy = false,
  --   build = vim.fn.has("win32") == 1 and "powershell ./install.ps1" or "./install.sh",
  -- },
}
