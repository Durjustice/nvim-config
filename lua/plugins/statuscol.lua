local statuscol = pRequire("statuscol")
if not statuscol then
  return
end

local builtin = require("statuscol.builtin")
statuscol.setup({
  relculright = true,
  segments = {
    { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
    {
      sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
      click = "v:lua.ScSa"
    },
    { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
    {
      sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
      click = "v:lua.ScSa"
    },
  },
})

