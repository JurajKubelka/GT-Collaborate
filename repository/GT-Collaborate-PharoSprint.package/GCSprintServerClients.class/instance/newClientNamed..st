instance creation
newClientNamed: aString
	| client commands |
	client := GCSprint new.
	client developer: (GCSprintUser named: aString).
	client fogbugz: GCFogBugz empty.
	commands := GCSprintCommands new.
	self connectTrantorNode: commands node.
	client commands: commands.
	clients addLast: client.
	^ client.