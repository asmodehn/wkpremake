function detect_cppcheck()
	io.write("Checking if Cppcheck is available for Static Code Analysis... ")
	local cmdStream = io.popen("cppcheck --version")
	local cmdOutput = cmdStream:read("*line")
    cmdStream:close()
	local detect = false
	if cmdOutput ~= nil then
		--print (cmdOutput)
		detect = string.find(cmdOutput,"Cppcheck") ~= nil
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