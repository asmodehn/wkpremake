function detect_dot()
	io.write ("Checking if Graphviz is available for documentation generation... ")
    local cmdStream = io.popen("dot -V 2>&1 ")
    local cmdOutput = cmdStream:read("*line")
    cmdStream:close()
	local detect = false
	if cmdOutput ~= nil then
		--print (cmdOutput)
		detect = string.find(cmdOutput,"graphviz") ~= nil
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