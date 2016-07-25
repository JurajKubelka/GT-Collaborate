tests
testAddLoginTwice
	| previousCommand returnedCommand |
	self testAddLogin.
	previousCommand := command.
	command := GCFogBugzLoginCommand new.
	returnedCommand := queue addCommand: command.
	self assert: queue size equals: 1.
	self assert: queue commands first == previousCommand.
	self assert: previousCommand == returnedCommand.
	self assert: activations equals: 1.