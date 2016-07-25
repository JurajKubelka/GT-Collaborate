activation
deactivate
	^ mutex critical: [ | oldProcess |
		oldProcess := process.
		process := nil.
		self hasCommands ifTrue: [ self activate ].
		oldProcess ]