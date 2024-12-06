local bufferline = pRequire("bufferline")
local cfg = require("config").bufferLine

if bufferline and cfg and cfg.enable then
  bufferline.setup({
    options = {
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
        },
      },
      -- optional，显示 LSP 报错图标
      ---@diagnostic disable-next-line: assign-type-mismatch
      diagnostics = "nvim_lsp",
      ---@diagnostic disable-next-line: unused-local
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " " or (e == "warning" and " " or "")
          s = s .. n .. sym
        end
        return s
      end,
    },
  })

  keymap("n", cfg.keys.prev, ":BufferLineCyclePrev<CR>")
  keymap("n", cfg.keys.next, ":BufferLineCycleNext<CR>")
  -- "moll/vim-bbye"
  keymap("n", cfg.keys.close, ":bdelete!<CR>")
  keymap("n", cfg.keys.close_left, ":BufferLineCloseLeft<CR>")
  keymap("n", cfg.keys.close_right, ":BufferLineCloseRight<CR>")
  keymap("n", cfg.keys.close_others, ":BufferLineCloseOthers<CR>")
  keymap("n", cfg.keys.close_pick, ":BufferLinePickClose<CR>")

  -- FIXME: reset colorscheme to make bufferline background color correct
  require("colorscheme").reset()
end

