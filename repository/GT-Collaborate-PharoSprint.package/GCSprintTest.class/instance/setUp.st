initialization
setUp
	super setUp.
	local := GCSprint alice.
	remote := GCSprint pedro.
	server := GCSprintCommandsServer new.
	server start.
	local commands connectTo: NetNameResolver loopBackAddress port: server port.
	remote commands connectTo: NetNameResolver loopBackAddress port: server port.