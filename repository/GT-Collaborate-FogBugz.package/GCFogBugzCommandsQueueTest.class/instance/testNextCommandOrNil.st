tests
testNextCommandOrNil
	self assert: queue nextCommandOrNil isNil.
	self assert: activations equals: 0.