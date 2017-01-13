initialization
useLocalCommandServer
	GCSprintCommandsServer start.
	self commands: (GCSprintCommands new 
		connectTo: NetNameResolver localHostAddress port: GCSprintCommandsServer port; 
		yourself)