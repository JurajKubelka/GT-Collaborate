tests
testAddUpdateTwice
	| previousCommand returnedCommand |
	self testAddUpdate.
	previousCommand := command.
	command := GCFogBugzUpdateOpenIssuesCommand new.
	returnedCommand := queue addCommand: command.
	self assert: queue size equals: 1.
	self assert: queue commands first == previousCommand.
	self assert: previousCommand == returnedCommand.
	self assert: activations equals: 1.