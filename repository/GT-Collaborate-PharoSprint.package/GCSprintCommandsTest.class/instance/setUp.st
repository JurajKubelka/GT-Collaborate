initialization
setUp
	super setUp.
	local := GCSprintCommands new.
	remote := GCSprintCommands new.
	server := GCTrantorServer new.
	server start.
	local connectTo: NetNameResolver loopBackAddress port: server port.
	remote connectTo: NetNameResolver loopBackAddress port: server port.