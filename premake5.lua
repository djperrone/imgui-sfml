project "ImGui_SFML"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"    


	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig-SFML.h",
		"imgui-SFML.h",
		"imgui-SFML.cpp",
		"imgui-SFML_export.h"	
	}

	includedirs
	{
		"../imgui",
		"../SFML/include"
	}

	links
	{
		"opengl32.lib"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"		
		symbols "on"

	filter "configurations:Release"
		runtime "Release"		
		optimize "on"

