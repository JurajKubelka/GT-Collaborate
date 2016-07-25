tests
testNextCommandOrNil2
	self testAddLogin.
	self assert: queue nextCommandOrNil == command.
	self assert: queue isEmpty.
	self assert: activations equals: 1.