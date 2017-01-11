tests
testRenounce
	state renounce: self.
	self assert: newState class equals: self renounceStateClass