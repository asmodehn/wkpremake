function detect_vld(found_define)
	io.write("Checking if VLD is available for Memory Leak detection... ")
	local retable = {}
	local vldh = os.pathsearch("vld.h"
		,"C:/Program Files (x86)/Visual Leak Detector/include"
		) .. "/vld.h"
	local vld32lib = os.pathsearch("vld.lib"
		,"C:/Program Files (x86)/Visual Leak Detector/lib/Win32"
		) .. "/vld.lib"
	local vld64lib = os.pathsearch("vld.lib"
		,"C:/Program Files (x86)/Visual Leak Detector/lib/Win64"
		) .. "/vld.lib"
	if vldh ~= nil and (vld32lib ~= nil or vld64lib ~= nil) then
		retable[0] = true -- to mark success
		if os.isfile(vldh) then retable["defines"] = found_define end
		if os.isfile(vldh) then retable["include"] = vldh end
		if os.isfile(vld32lib) then retable["lib"] = vld32lib end
		io.write ("OK\n")
	else
		retable[0] = false -- to mark failure
		io.write ("NOT FOUND !\n")
	end
	
	return retable
end