function detect_nsis()
	io.write("Checking if NSIS is available for Windows Installer Generation... ")
	local cmdStream = io.popen("makensis -help")
	local cmdOutput = cmdStream:read("*line")
    cmdStream:close()
	local detect = false
	if cmdOutput ~= nil then
		--print (cmdOutput)
		detect = string.find(cmdOutput,"MakeNSIS") ~= nil
		if detect then
			io.write ("OK\n")
		else
			io.write ("NOT FOUND !\n")
		end
	else
		io.write ("NOT FOUND !\n")
	end
	return detect
end