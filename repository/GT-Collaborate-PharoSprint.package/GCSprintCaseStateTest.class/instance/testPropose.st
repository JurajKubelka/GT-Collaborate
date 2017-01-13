tests
testPropose
	state propose: self developer: developer.
	self assert: newState class equals: self proposedStateClass.
	self assertNewStateDeveloper.