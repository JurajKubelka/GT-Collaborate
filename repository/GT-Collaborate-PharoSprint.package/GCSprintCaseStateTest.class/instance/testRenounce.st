tests
testRenounce
	state renounce: self developer: developer.
	self assert: newState class equals: self renounceStateClass.
	self assertNewStateDeveloper.