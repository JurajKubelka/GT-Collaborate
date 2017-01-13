tests
testTake
	state take: self developer: developer.
	self assert: newState class equals: self takenStateClass.
	self assertNewStateDeveloper.