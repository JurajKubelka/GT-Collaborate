tests
testFinish
	state finish: self developer: developer.
	self assert: newState class equals: self doneStateClass.
	self assertNewStateDeveloper.