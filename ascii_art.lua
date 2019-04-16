-- scaffold geniefile for ascii_art

ascii_art_script = path.getabsolute(path.getdirectory(_SCRIPT))
ascii_art_root = path.join(ascii_art_script, "ascii_art")

ascii_art_includedirs = {
	path.join(ascii_art_script, "config"),
	ascii_art_root,
}

ascii_art_libdirs = {}
ascii_art_links = {}
ascii_art_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { ascii_art_includedirs }
	end,

	_add_defines = function()
		defines { ascii_art_defines }
	end,

	_add_libdirs = function()
		libdirs { ascii_art_libdirs }
	end,

	_add_external_links = function()
		links { ascii_art_links }
	end,

	_add_self_links = function()
		links { "ascii_art" }
	end,

	_create_projects = function()

project "ascii_art"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		ascii_art_includedirs,
	}

	defines {}

	files {
		path.join(ascii_art_script, "config", "**.h"),
		path.join(ascii_art_root, "**.h"),
		path.join(ascii_art_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
