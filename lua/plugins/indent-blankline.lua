local indent_blankline = pRequire("ibl")
if not indent_blankline then
  return
end

local highlight = {
  "Violet",
}
local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "Violet", { fg = "#99DDFF" })
end)

indent_blankline.setup({
  -- space_char_blankline = " ",
  scope = {
    show_start = true,
    highlight = highlight,
  },
  exclude = {
    filetypes = {
      "checkhealth",
      "man",
      "gitcommit",
      "null-ls-info",
      "dashboard",
      "packer",
      "terminal",
      "help",
      "log",
      "markdown",
      "TelescopePrompt",
      "TelescopeResults",
      "lsp-installer",
      "lspinfo",
      "toggleterm",
      "text",
      "''",
    },
  },

  indent = {
    -- char = '¦'
    -- char = '┆'
    -- char = '│'
    -- char = "⎸",
    char = "▏",
  },
})
