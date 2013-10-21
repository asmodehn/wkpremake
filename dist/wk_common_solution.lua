-- lua file to include, to have consistent solution configuration for all wkpremake solutions

configurations { "Debug", "Release" }

defaultaction("windows", "vs2010")
defaultaction("linux", "gmake")

if os.is("windows") then
	defines { "WIN32","_WINDOWS" }
end

configuration "Debug*"
	defines { "_DEBUG" }
	flags { "Symbols" }

configuration "Release*"
	defines { "NDEBUG" }
	flags { "Optimize" }

if action == "clean" then
	os.rmdir("build")
	os.rmdir("bin")
end