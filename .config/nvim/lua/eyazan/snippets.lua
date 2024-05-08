local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local return_filename = function(_, snip)
	local env = snip.env
	return env.TM_FILENAME:gsub("%.", "_"):upper()
end

ls.add_snippets("cpp", {
	s("headerguard", {
		t("#ifndef "),
		f(return_filename, {}),
		t({ "", "#define " }),
		f(return_filename, {}),
		t({ "", "", "" }),
		i(1),
		t({ "", "", "#endif // " }),
		f(return_filename, {}),
	})
})
