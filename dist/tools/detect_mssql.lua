function detect_mssql()
	io.write ("Checking if MSSQL Server is available for DB testing... ")
    local cmdStream = io.popen("powershell -Command SQLCMD.EXE -?")
    local cmdOutput = cmdStream:read("*line")
    cmdStream:close()
	local detect = false
	if cmdOutput ~= nil then
		--print (cmdOutput)
		detect = string.find(cmdOutput,"SQL Server Command Line Tool") ~= nil
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