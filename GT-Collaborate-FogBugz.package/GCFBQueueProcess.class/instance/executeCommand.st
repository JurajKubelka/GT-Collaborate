execution
executeCommand
	| command |
	command := queue nextCommandOrNil.
	command ifNil: [ ^ self ].
	command execute.