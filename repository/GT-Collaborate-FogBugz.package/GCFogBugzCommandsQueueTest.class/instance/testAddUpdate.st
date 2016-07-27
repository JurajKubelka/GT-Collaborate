tests
testAddUpdate
	command := GCFogBugzUpdateOpenIssuesCommand new.
	queue addCommand: command.
	self assert: queue size equals: 1.
	self assert: queue commands first == command.
	self assert: activations equals: 1.