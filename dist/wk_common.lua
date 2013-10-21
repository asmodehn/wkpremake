-- common lua file with utils that should be available in all solutions

action = _ACTION or ""

function defaultaction(osName, actionName)
	if osName ~= nil and os.is(osName) == false then
		return
	end
 
	if _ACTION == nil then
		_ACTION = actionName
		action = _ACTION
	end
end

function get_hostname()
	--io.write ("Getting current computer hostname... ")
    local cmdStream = assert(io.popen("hostname"))
    local cmdOutput = assert(cmdStream:read("*line"))
    cmdStream:close()
	--io.write (cmdOutput .. "\n")
	return cmdOutput
end

function get_user()
	--io.write  ("Getting current user...")
    local username = assert(os.getenv("USERNAME"))
    return username

end