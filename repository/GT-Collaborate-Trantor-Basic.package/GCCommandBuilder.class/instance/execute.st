execute
execute
	allCommands := engine remoteCommands.
	self filterOldCommands.
	self announceCommands.