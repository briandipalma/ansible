local ok, autopairs = pcall(require, "nvim-autopairs")

if not ok then
	return
end

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

autopairs.setup({ check_ts = true, fast_wrap = {} })
-- If you want insert `(` after select function or method item
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
