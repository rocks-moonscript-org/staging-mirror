package = "moonscript"
version = "0.1.0-1"

source = {
	url = "git://github.com/leafo/moonscript.git",
	branch = "v0.1.0"
}

description = {
	summary = "A little language that compiles to Lua",
	homepage = "http://moonscript.org",
	maintainer = "Leaf Corcoran <leafot@gmail.com>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1",
	"lpeg >= 0.10",
	"alt-getopt >= 0.7",
	"luafilesystem >= 1.5"
}

build = {
	type = "builtin",
	modules = {
		["moonscript"] = "moonscript/init.lua",
		["moonscript.compile"] = "moonscript/compile.lua",
		["moonscript.compile.line"] = "moonscript/compile/line.lua",
		["moonscript.compile.value"] = "moonscript/compile/value.lua",
		["moonscript.compile.format"] = "moonscript/compile/format.lua",
		["moonscript.compile.types"] = "moonscript/compile/types.lua",
		["moonscript.parse"] = "moonscript/parse.lua",
		["moonscript.dump"] = "moonscript/dump.lua",
		["moonscript.data"] = "moonscript/data.lua",
		["moonscript.util"] = "moonscript/util.lua",
		["moonscript.errors"] = "moonscript/errors.lua",
		["moonscript.version"] = "moonscript/version.lua",
	},
	install = {
		bin = { "moon", "moonc" }
	}
}

