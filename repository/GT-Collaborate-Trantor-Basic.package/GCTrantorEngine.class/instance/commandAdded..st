sending
commandAdded: aGCCommands
	trantor connect ifTrue: [ ^ self ].
	self pushLocalChanges.
	trantor sync.