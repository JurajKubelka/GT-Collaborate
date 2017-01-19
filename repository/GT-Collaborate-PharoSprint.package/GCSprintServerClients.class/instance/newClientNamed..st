instance creation
newClientNamed: aString
	| client commands |
	client := GCSprint new.
	client developer: (GCSprintUser named: aString).
	client fogbugz: GCFogBugz empty.
	commands := GCSprintCommands new.
	self connectTrantorNode: commands node.
	"commands connectTo: NetNameResolver loopBackAddress port: server port."
	client commands: commands.
	clients addLast: client.
	^ client.