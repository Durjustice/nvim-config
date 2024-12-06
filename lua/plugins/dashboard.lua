local dashboard = pRequire("dashboard")
if dashboard then
  dashboard.setup({
    theme = 'hyper',

    -- config = {
    --   shortcut = {
    --     -- action can be a function type
    --     { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
    --   },
    --   packages = { enable = true }, -- show how many plugins neovim loaded
    --   -- limit how many projects list, action when you press key or enter it will run this action.
    --   -- action can be a functino type, e.g.
    --   -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
    --   project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
    --   mru = { enable = true, limit = 10, icon = 'your icon', label = '', cwd_only = false },
    --   footer = {}, -- footer
    -- }

    config = {
      header = {
        [[]],
        [[]],
        [[██╗    ██╗ █████╗ ███╗   ██╗██████╗ ███████╗██████╗ ███████╗██████╗ ]],
        [[██║    ██║██╔══██╗████╗  ██║██╔══██╗██╔════╝██╔══██╗██╔════╝██╔══██╗]],
        [[██║ █╗ ██║███████║██╔██╗ ██║██║  ██║█████╗  ██████╔╝█████╗  ██████╔╝]],
        [[██║███╗██║██╔══██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗██╔══╝  ██╔══██╗]],
        [[╚███╔███╔╝██║  ██║██║ ╚████║██████╔╝███████╗██║  ██║███████╗██║  ██║]],
        [[ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝]],
        [[                                                                    ]],
        [[]],
        [[]],
      },
      footer = {
        "",
        "",
        "Where there is a will, there is a way.",
      },
      week_header = {
        enable = false,
      },
      shortcut = {
        { desc = ' Sync', group = '@property', action = 'Lazy sync', key = 's' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        --   TODO: add shortcuts {
     --     desc = ' Apps',
     --     group = 'DiagnosticHint',
     --     action = 'Telescope app',
     --     key = 'a',
     --   },

        {
          desc = ' Nvim setting',
          group = 'Number',
          action = 'edit $MYVIMRC',
          key = 'n',
        },
      },
    },
  })
end

