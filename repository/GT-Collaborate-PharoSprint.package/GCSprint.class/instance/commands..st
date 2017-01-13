accessing
commands: aGCSprintCommands
	self unsubscribe.
	commands := aGCSprintCommands.
	self subscribe.