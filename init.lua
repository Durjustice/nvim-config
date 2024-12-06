require("utils.global")

require('basic')
require("keybindings")

local config = require("config")
require("env").init(config)

require("lazynvim")
require("colorscheme").reset()
require("lsp")
require("cmpnvim")
-- require("dap")

