project "GLEW"

	kind "StaticLib"

	language "C"

	staticruntime "off"

	files {
		"src/glew.c"
	}

    includedirs {
        "include"
    }

    defines {
        "WIN32",
        "_WINDOWS",
        "GLEW_STATIC",
        "WIN32_MEAN_AND_LEAN",
        "VC_EXTRALEAN",
        "_CRT_SECURE_NO_WARNINGS",
        "GLEW_NO_GLU"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
        defines {
            "DEBUG",
            "CMAKE_INTDIR=\"Debug\""
        }

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
        defines {
            "CMAKE_INTDIR=\"Release\""
        }